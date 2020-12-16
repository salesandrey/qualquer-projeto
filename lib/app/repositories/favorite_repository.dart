

import 'dart:convert';

import 'package:http/http.dart';

class FavoriteRepository{

  final int userID;

  FavoriteRepository({this.userID});


  Future<void> insert(String value,int userID,int userFavorite) async {
    String url = "https://padmed.lanconi.com.br/favoriteInsert.py";

    var currentFilter = jsonEncode(
        {
          "idUsuario": userID,
          "idFavorito": userFavorite,
          "status": value
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      print(response.body);
      return jsonDecode(response.body);
    }else{
      print(response.statusCode);
      return null;
    }
  }

  Future getUsersAdd(int userID) async {

    String url = "https://padmed.lanconi.com.br/favoriteGet.py";

    var currentFilter = jsonEncode(
        {
          "idUsuario": userID
        }
        );
    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    }else{
      print(response.statusCode);
      return null;
    }
  }

  Stream get loadingFavorites async* {
    yield await getUsersAdd(userID);
  }
}