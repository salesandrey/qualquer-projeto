



import 'dart:convert';

import 'package:http/http.dart';

class UserRepository{

  Future<dynamic> get(String email,String password ) async{
    String url = "https://padmed.lanconi.com.br/usuarioGet.py";

    var userData = jsonEncode({
      "email": email,
      "senha": password
    });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: userData );

    if(response.statusCode==200){
      return jsonDecode(response.body);
    }
    else{
      return null;
    }
  }

  Future<dynamic> insert(dynamic data) async{
    String url = "https://padmed.lanconi.com.br/usuarioInsert.py";
    var userData = data;

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: userData );

    if(response.statusCode==200){
      print(response.body);
      return jsonDecode(response.body);
    }
    else{
      print(response.body);
      return null;
    }
  }

  Future<void> update() async{
      String url = "https://padmed.lanconi.com.br/usuarioUpdate.py";
      var userData = jsonEncode({
        "id":16,
        "idInteresse":12,
        "nome":"teste nome atualiazado",
        "email": "teste email atualiazado",
        "senha": "123456789",
        "data":"2020-10-10",
        "cod":"teste cod atualiazado",
        "sobre":"teste sobre atualiazado",
        "situacao": "teste situacao atualiazado",
        "dispositivo": "teste dispositivo atualiazado",
        "especialidade":"teste especialidade atualiazado",
        "graduacao":"teste graduacao atualiazado",
        "tipoInteresse":"tipo interesse atualiazado",
        "cidade":"bombinhas",
        "estado":"santa catarina",
        "atividades":[
          {
            "id": 9,
            "tipo":"tipo 1 atualizado2",
            "atividade":"atividade 1 atualizado2"
          },
          {
            "id":10,
            "tipo":"tipo 2 ito2",
            "atividade":"atividade ito2"
          }
        ]
      });

      Response response = await post(url,headers:{"Content-Type": "application/json"},body: userData );

      if(response.statusCode==200){
        print(response.body);
      }
      else{
        print(response.statusCode);
      }

  }

  Future<dynamic> checkEmail(String email) async{
    String url = "https://padmed.lanconi.com.br/emailGet.py";

    var userData = jsonEncode({
      "email": email,
    });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body:userData );

    if(response.statusCode==200){
      print(response.body);
      return jsonDecode(response.body);
    }
    else{
      print(response.body);
      return null;
    }
  }

}