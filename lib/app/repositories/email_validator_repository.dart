


import 'dart:convert';

import 'package:http/http.dart';

class EmailValidatorRepository{


  Future<dynamic> sendEmailCode(String email)async {

    String url = "https://padmed.lanconi.com.br/otpGenerator.py";

    var userData = jsonEncode({

        "email": email
    });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: userData );

    if(response.statusCode==200){
      print(response.body);
      return jsonDecode(response.body);
    }
    else{
      print(response.statusCode);
      return null;
    }

  }

  Future<dynamic> sendCodeVerification(String email,String code)async {

    String url = "https://padmed.lanconi.com.br/otpValidator.py";

    var userData = jsonEncode(
        {
          "email": email,
          "token": code
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: userData );

    if(response.statusCode==200){
      return jsonDecode(response.body);
    }
    else{
      print(response.statusCode);
      return null;
    }

  }

}