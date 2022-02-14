import 'dart:async';

import 'models/api_message.pb.dart';
import 'models/api_message.twirp.dart';

// import 'config/model/model.twirp.dart';
// import 'config/service/service.twirp.dart';

Future main(List<String> args) async {
  var service = History('http://apptree.ngrok.io');
  try {
    var result = await service.getHistory(
        HistoryRequest(symbol: 'BTC', limit: 100, interval: '1h'),
        type: ReqType.protobuf);
    print(result);
  } on Exception catch (e) {
    print("->${e.toString()}");
  } catch (e) {
    print(e);
  }
}
