import 'package:flutter/cupertino.dart';

class NextPhotoProvider extends ChangeNotifier {
  int index = 0;
  List aboutcat = [];
  
  String img = "https://cataas.com/cat";
  void nextInformation() async {
    img = await "https://cataas.com/cat/$index";
    if (index == 2) {
      index = 0;
      print(aboutcat);
    } else {
      print(aboutcat);
      index += 1;
    }
    notifyListeners();
  }
}
