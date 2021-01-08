

import 'dart:convert';

import 'package:http/http.dart';

class FilterRepository{


  Future<dynamic> filter({
      String type,
      String instagram,
      String email,
      List <Map<String,String>> speciality,
      List<Map<String,String>> graduations,
      int idUser}) async{
    String url = "https://padmed.lanconi.com.br/filter.py";

    var currentFilter = jsonEncode({
      "idUsuario" : idUser.toString(),
      "especialidades" : speciality,
      "graduacoes" : graduations,
      "cidade" : "",
      "estado" : "",
      "email": "",
      "instagram": "",
      "filtro" : type,
      "limit" : 20,
      "offset" : 0
    });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    }else{
      return null;
    }
  }

}