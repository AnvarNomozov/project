import 'package:dio/dio.dart';
import 'package:project/model/cat_model.dart';

class CatService {
  static Future<List<CatModel>> getData() async {
    Response res = await Dio().get(
        "https://cat-fact.herokuapp.com/facts/random?animal_type=cat&amount=2");

    return (res.data as List).map((e) => CatModel.fromJson(e)).toList();
  }
}
