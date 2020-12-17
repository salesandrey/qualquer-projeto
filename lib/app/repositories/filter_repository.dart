

import 'dart:convert';

import 'package:http/http.dart';

class FilterRepository{


  Future<dynamic> filter(String type,String speciality,int idUser) async{
    String url = "https://padmed.lanconi.com.br/filter.py";

    var currentFilter = jsonEncode({
      "idUsuario" : idUser.toString(),
      "especialidade" : speciality,
      "graduacao" : "teste graduacao",
      "teste graduacao" : "teste email atualizado",
      "cidade" : "",
      "estado" : "",
      "filtro" : type,
      "limit" : 0,
      "offset" : 20
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