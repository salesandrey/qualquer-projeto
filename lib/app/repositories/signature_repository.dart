




import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';



class SignatureRepository {


  Future<bool> validateSignature(int userID) async {
    final String url = "https://padmed.lanconi.com.br/assinaturaValidate.py";

    var query = jsonEncode({
      "idUsuario": userID
    });

    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future <bool> insertSignature(int userID, String image) async {

    final String url = "https://padmed.lanconi.com.br/assinaturaInsert.py";


    var query = jsonEncode({
        "idUsuario": userID,
        "assinatura": image
    });


    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);

    if (response.statusCode == 200) {
      print(response.body);
      return true;
    } else {
      print(response.body);
      return false;
    }


}

}