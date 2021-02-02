

import 'dart:convert';

import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:http/http.dart';

class FilterRepository{

  final int idUser;
  final String email;
  final String instagram;
  final String state;
  final String city;
  final String type;
  final List<Map<String,String>> speciality;
  final List<Map<String,String>> graduations;
  final List<Map<String,String>> activits;

  FilterRepository({this.activits,this.idUser, this.email, this.instagram, this.state, this.city, this.type, this.speciality, this.graduations});

  Future<dynamic> filter({
      String type,
      String instagram,
      String state,
      String city,
      String email,
      List <Map<String,String>> activits,
      List <Map<String,String>> speciality,
      List<Map<String,String>> graduations,
      int idUser}) async{
    String url = "https://padmed.lanconi.com.br/filter.py";

    var currentFilter = jsonEncode({
      "idUsuario" : idUser.toString(),
      "especialidades" : speciality,
      "atividades": activits,
      "graduacoes" : graduations,
      "cidade" : city,
      "estado" : state,
      "email": "",
      "instagram": "",
      "filtro" : type,
      "limit" : 20,
      "offset" : 0
    });

    print(currentFilter);

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      print(type);
      print(response.body);
      return jsonDecode(response.body);
    }else{
      return null;
    }
  }

  Future<List<UserMatchModel>> filterResults() async{
    String url = "https://padmed.lanconi.com.br/filter.py";

    var currentFilter = jsonEncode({
      "idUsuario" : idUser.toString(),
      "especialidades" : speciality,
      "graduacoes" : graduations,
      "cidade" : city,
      "estado" : state,
      "email": email,
      "atividades" :activits,
      "instagram": instagram,
      "filtro" : type,
      "limit" : 30,
      "offset" : 0
    });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      List<dynamic> list = jsonDecode(response.body)["results"];
      List<UserMatchModel> users = list.map((value) => UserMatchModel.fromMap(value)).toList();
      return users;
    }else{
      print(response.body);
      return null;
    }
  }


  Stream<List<UserMatchModel>> get usersFiltered async*
  {
    yield await filterResults();
  }

}