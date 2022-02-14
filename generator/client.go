package generator

import (
	"bytes"
	"fmt"
	"os"
	"path"
	"strings"
	"text/template"

	"github.com/gogo/protobuf/proto"
	"github.com/gogo/protobuf/protoc-gen-gogo/descriptor"
	"github.com/gogo/protobuf/protoc-gen-gogo/generator"

	plugin_go "github.com/gogo/protobuf/protoc-gen-gogo/plugin"
)

const apiTemplate = `
{{- range .Imports}}
import '{{.Path}}';
{{- end}}
import 'package:http/http.dart' as http;

{{range .Services}}
enum ReqType { json, protobuf }

abstract class {{.Name}}Abstract {
	{{- range .Methods}}
	Future<{{.OutputType}}>{{.Name}}({{.InputType}} {{.InputArg}});
    {{- end}}
}

class {{.Name}} implements {{.Name}}Abstract {
	final String hostname;
    http.Client requester;
	final _pathPrefix = "/twirp/{{.Package}}.{{.Name}}/";

    {{.Name}}(this.hostname, {http.Client requester}) {
		if (requester == null) {
			requester = http.Client();
    	} else {
			requester = requester;
		}
	}

    {{range .Methods}}
	Future<{{.OutputType}}>{{.Name}}({{.InputType}} {{.InputArg}}, {ReqType type = ReqType.protobuf}) async {
		var url = "${hostname}${_pathPrefix}{{.Path}}";
		var uri = Uri.parse(url);
	
		var body =
			(type == ReqType.json) ? {{.InputArg}}.toProto3Json() : {{.InputArg}}.writeToBuffer();
	
		var contentLength = body.toString().length;
	
		var headers = {
		  'Content-Type':
			  (type == ReqType.json) ? 'application/json' : 'application/protobuf',
		  'Content-Length': contentLength
		};
	
		var response = await http.post(uri, headers: headers, body: body);
	
		if (response.statusCode != 200) {
		  throw twirpException(response);
		}
	
		var value = (type == ReqType.json)
			? {{.OutputType}}.fromJson(json.decode(response.body))
			: {{.OutputType}}.fromBuffer(response.bodyBytes);
		return value;
	}
    {{end}}

	Exception twirpException(http.Response response) {
    	try {
      		var value = json.decode(response.body);
      		return TwirpJsonException.fromJson(value);
    	} catch (e) {
      		return TwirpException(response.body);
    	}
  	}
}

{{end}}

`

type Service struct {
	Name    string
	Package string
	Methods []ServiceMethod
}

type ServiceMethod struct {
	Name       string
	Path       string
	InputArg   string
	InputType  string
	OutputType string
}

func NewAPIContext() APIContext {
	ctx := APIContext{}
	return ctx
}

type APIContext struct {
	Services []*Service
	Imports  []Import
}

type Import struct {
	Path string
}

func (ctx *APIContext) ApplyImports(d *descriptor.FileDescriptorProto) {
	var deps []Import

	if len(ctx.Services) > 0 {
		deps = append(deps, Import{"dart:async"})
		deps = append(deps, Import{"package:twirp_dart_core/twirp_dart_core.dart"})

		str1 := *d.Name
		res1 := strings.SplitAfter(str1, "/")
		res2 := strings.SplitAfter(res1[len(res1)-1], ".")
		deps = append(deps, Import{res2[0] + "pb.dart"})

	}
	deps = append(deps, Import{"dart:convert"})

	for _, dep := range d.Dependency {
		if dep == "google/protobuf/timestamp.proto" {
			continue
		}
		importPath := path.Dir(dep)
		sourceDir := path.Dir(*d.Name)
		sourceComponents := strings.Split(sourceDir, fmt.Sprintf("%c", os.PathSeparator))
		distanceFromRoot := len(sourceComponents)
		for _, pathComponent := range sourceComponents {
			if strings.HasPrefix(importPath, pathComponent) {
				importPath = strings.TrimPrefix(importPath, pathComponent)
				distanceFromRoot--
			}
		}
		fileName := dartFilename(dep)
		fullPath := fileName

		fullPath = path.Join(importPath, fullPath)
		if distanceFromRoot > 0 {
			for i := 0; i < distanceFromRoot; i++ {
				fullPath = path.Join("..", fullPath)
			}
		}
		deps = append(deps, Import{fullPath})

	}
	ctx.Imports = deps
}

func CreateClientAPI(d *descriptor.FileDescriptorProto, generator *generator.Generator) (*plugin_go.CodeGeneratorResponse_File, error) {
	ctx := NewAPIContext()
	pkg := d.GetPackage()

	for _, s := range d.GetService() {
		service := &Service{
			Name:    s.GetName(),
			Package: pkg,
		}

		for _, m := range s.GetMethod() {
			methodPath := m.GetName()
			methodName := strings.ToLower(methodPath[0:1]) + methodPath[1:]
			in := removePkg(m.GetInputType())
			arg := strings.ToLower(in[0:1]) + in[1:]

			method := ServiceMethod{
				Name:       methodName,
				Path:       methodPath,
				InputArg:   arg,
				InputType:  in,
				OutputType: removePkg(m.GetOutputType()),
			}

			service.Methods = append(service.Methods, method)
		}
		ctx.Services = append(ctx.Services, service)
	}

	ctx.ApplyImports(d)
	t, err := template.New("client_api").Parse(apiTemplate)

	if err != nil {
		return nil, err
	}

	b := bytes.NewBufferString("")
	err = t.Execute(b, ctx)
	if err != nil {
		return nil, err
	}

	cf := &plugin_go.CodeGeneratorResponse_File{}
	cf.Name = proto.String(dartModuleFilename(d))
	cf.Content = proto.String(b.String())

	return cf, nil
}

func removePkg(s string) string {
	p := strings.Split(s, ".")
	return p[len(p)-1]
}
