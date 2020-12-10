


import 'dart:convert';

import 'package:http/http.dart';

class LocationRepository{


  Future<dynamic> getUF() async{

    String url = "https://servicodados.ibge.gov.br/api/v1/localidades/estados";

    Response response = await get(url);

    if(response.statusCode==200){
      return  jsonDecode(response.body);
    }else{
      print(response.statusCode);
      return null;
    }
  }

  Future<dynamic> getCity(String id) async{

    String url = "https://servicodados.ibge.gov.br/api/v1/localidades/estados/$id/municipios";

    Response response = await get(url);

    if(response.statusCode==200){
      return  jsonDecode(response.body);
    }else{
      print(response.statusCode);
      return null;
    }
  }

}