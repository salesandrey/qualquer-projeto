

import 'dart:convert';

import 'package:http/http.dart';

class FilterRepository{


  Future<dynamic> filter(String type) async{
    String url = "https://padmed.lanconi.com.br/filter.py";

    var currentFilter = jsonEncode({
      "especialidade" : "teste especialidade",
      "graduacao" : "teste graduacao",
      "teste graduacao" : "teste email atualizado",
      "cidade" : "curitiba",
      "estado" : "parana",
      "filtro" : type,
      "limit" : 0,
      "offset" : 10
    });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      return jsonDecode(response.body);
    }else{
      return null;
    }
  }

}