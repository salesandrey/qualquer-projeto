import 'dart:convert';
import 'package:http/http.dart';

class ListUserRepository{

  Future<dynamic> get(String id) async{
    String url = "https://padmed.lanconi.com.br/usuarioList.py";

    var currentFilter = jsonEncode(
        {
          "idUsuario": id,
          "limit":30,
          "offset":0
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      return jsonDecode(response.body);
    }else{
      return null;
    }
  }
}