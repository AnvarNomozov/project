import 'package:flutter/cupertino.dart';

class NextPhotoProvider extends ChangeNotifier {
  int index = 0;

  String img = "https://cataas.com/cat";
  void nextInformation() async {
    img = await "https://cataas.com/cat/$index";
    if (index == 2) {
      index = 0;
    } else {
      index += 1;
    }
    notifyListeners();
  }
}
