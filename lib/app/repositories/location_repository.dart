import 'dart:convert';

import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';

class LocationRepository {


  final String id;

  LocationRepository({this.id});

  Future<ObservableList<UfModel>> getUF() async {
    String url = "https://padmed.lanconi.com.br/estadosGet.py";

    var query = jsonEncode(
        {
          "id": ""
        });

    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);

    if (response.statusCode == 200) {
      print(response.body);
      List<dynamic> list = jsonDecode(response.body)["results"];
      List<UfModel> ufs = list.map((value) => UfModel.fromMap(value)).toList();
      return ufs.asObservable();
    } else {
      print(response.body);
      return null;
    }
  }

  Future<List<CityModel>> getCity(String uf) async {
    String url = "https://padmed.lanconi.com.br/cidadesGet.py";

    var query = jsonEncode(
        {
          "id": "",
          "uf": uf

        }
        );

    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);

    if (response.statusCode == 200) {
      List<dynamic> list = jsonDecode(response.body)["results"];
      List<CityModel> cities = list.map((value) => CityModel.fromMap(value)).toList();
      return cities;
    } else {
      print(response.body);
      return null;
    }
  }

  Stream<List<CityModel>> get cities async*{
    yield await getCity(id);
  }

}
