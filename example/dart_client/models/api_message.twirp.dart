
import 'dart:async';
import 'package:twirp_dart_core/twirp_dart_core.dart';
import 'api_message.pb.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


enum ReqType { json, protobuf }

abstract class HistoryAbstract {
	Future<HistoryResponse>getHistory(HistoryRequest historyRequest);
}

class History implements HistoryAbstract {
	final String hostname;
    http.Client requester;
	final _pathPrefix = "/twirp/CoinbitPublicApi.History/";

    History(this.hostname, {http.Client requester}) {
		if (requester == null) {
			requester = http.Client();
    	} else {
			requester = requester;
		}
	}

    
	Future<HistoryResponse>getHistory(HistoryRequest historyRequest, {ReqType type = ReqType.protobuf}) async {
		var url = "${hostname}${_pathPrefix}GetHistory";
		var uri = Uri.parse(url);
	
		var body =
			(type == ReqType.json) ? historyRequest.toProto3Json() : historyRequest.writeToBuffer();
	
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
			? HistoryResponse.fromJson(json.decode(response.body))
			: HistoryResponse.fromBuffer(response.bodyBytes);
		return value;
	}
    

	Exception twirpException(http.Response response) {
    	try {
      		var value = json.decode(response.body);
      		return TwirpJsonException.fromJson(value);
    	} catch (e) {
      		return TwirpException(response.body);
    	}
  	}
}



