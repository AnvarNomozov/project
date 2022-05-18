import 'package:flutter/cupertino.dart';
import 'package:project/service/cat_service.dart';

class NextPhotoProvider extends ChangeNotifier {
  int index = 0;
  List aboutcat = [];

  String img = "https://cataas.com/cat";
  nextInformation() {
    img;
    index += 1;
    img = "https://cataas.com/cat/$index";
    CatService.getData();
    print(index);
    notifyListeners();
  }
}
