import 'dart:async';
import 'package:http/http.dart';
import 'package:twirp_dart_core/twirp_dart_core.dart';
import 'dart:convert';
import '../model/model.pb.dart';
import 'package:http/http.dart' as http;

enum ReqType { json, protobuf }

abstract class Haberdasher {
  Future<Hat> makeHat(Size size);
  Future<Hat> buyHat(Hat hat);
}

class DefaultHaberdasher {
  final String hostname;
  Client requester;
  final _pathPrefix = "/twirp/config.service.Haberdasher/";

  DefaultHaberdasher(this.hostname, {Client requester}) {
    if (requester == null) {
      requester = http.Client();
    } else {
      requester = requester;
    }
  }

  Future<Hat> makeHat(Size size, {ReqType type = ReqType.protobuf}) async {
    var url = "${hostname}${_pathPrefix}MakeHat";
    var uri = Uri.parse(url);

    var body =
        (type == ReqType.json) ? size.toProto3Json() : size.writeToBuffer();

    var contentLength = body.toString().length;

    var headers = {
      'Content-Type':
          (type == ReqType.json) ? 'application/json' : 'application/protobuf',
      'Content-Length': contentLength
    };

    print(uri);
    print(headers);
    print(body);

    var response = await http.post(uri, headers: headers, body: body);

    if (response.statusCode != 200) {
      throw twirpException(response);
    }

    var value = (type == ReqType.json)
        ? Hat.fromJson(json.decode(response.body))
        : Hat.fromBuffer(response.bodyBytes);
    return value;
  }

  Exception twirpException(Response response) {
    try {
      var value = json.decode(response.body);
      return new TwirpJsonException.fromJson(value);
    } catch (e) {
      return new TwirpException(response.body);
    }
  }
}
