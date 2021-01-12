



import 'dart:convert';
import 'dart:io';

import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/utils/time_convert.dart';
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

  Future<void> update(UserModel model) async{
      String url = "https://padmed.lanconi.com.br/usuarioUpdate.py";
      var userData = jsonEncode({
        "id":model.id,
        "instagram":model.instagram,
        "idInteresse":12,
        "nome":model.nome,
        "email": model.email,
        "data":TimeConvert().convertDateTimeToString(model.data),
        "cod":model.cod,
        "sobre":model.sobre,
        "situacao": "",
        "dispositivo": Platform.isAndroid? "Android":"Ios",
        "especialidade": model.especialidade,
        "graduacao": model.graduacao,
        "tipo":model.tipo,
        "cidade":model.cidade,
        "estado":model.estado,
        "atividades":model.atividades,
        "interesses":model.interesses
      });

      Response response = await post(url,headers:{"Content-Type": "application/json"},body: userData );

      if(response.statusCode==200){
        print(response.body);
      }
      else{
        print(response.statusCode);
        print(response.body);
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