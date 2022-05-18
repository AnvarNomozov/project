import 'package:dio/dio.dart';
import 'package:project/model/cat_model.dart';

class CatService {
  Future getData() async {
    Response res = await Dio().get("https://cat-fact.herokuapp.com/facts/");

    try {
      if (res.statusCode == 200) {
        return (res.data as List).map((e) => CatModel.fromJson(e)).toList();
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
    }
  }
}
