import 'dart:async';

// import 'config/model/model.twirp.dart';
import 'config/model/model.pb.dart';
import 'config/service/test.dart';
// import 'config/service/service.twirp.dart';

Future main(List<String> args) async {
  var service = DefaultHaberdasher('http://apptree.ngrok.io');
  try {
    var hat = await service.makeHat(Size(inches: 10), type: ReqType.protobuf);
    hat.color = '';
    print(hat);

    // hat.dictionary["Test"] = 1;
    // hat.dictionary["Test2"] = 2;
    // hat.createdOn = new DateTime.now();
    // hat.dictionaryWithMessage["BackupSize"] = new Size(20);
    // var boughtHat = await service.buyHat(hat);
    // print(boughtHat);
  } on Exception catch (e) {
    print("->${e.toString()}");
  } catch (e) {
    print(e);
  }
}
