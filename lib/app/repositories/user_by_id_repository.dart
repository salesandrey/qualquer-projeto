


import 'dart:convert';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:http/http.dart';

class UserByIDRepository{

  Future<UserMatchModel> getUser(int id) async{

    final String url = "https://padmed.lanconi.com.br/usuarioGetById.py";

    var query = jsonEncode(
        {
          "idUsuario": id.toString()
        });

    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);

    if (response.statusCode == 200){

      dynamic user = jsonDecode(response.body)["results"];
      UserMatchModel currentUser = user.map((value) => UserMatchModel.fromMap(value));
      return currentUser;

    }else{
      return null;
    }
  }
}