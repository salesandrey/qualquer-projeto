import 'dart:convert';
import 'package:http/http.dart';

class ResetPasswordRepository{


  Future<dynamic> reset(String email, String password) async{

    String url = "https://padmed.lanconi.com.br/usuarioUpdateSenha.py";

    var currentAccount = jsonEncode(
        {
          "email": email,
          "novaSenha": password
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentAccount);

    if(response.statusCode==200){
      return  jsonDecode(response.body);
    }else{
      print(response.statusCode);
      return null;
    }
  }
}