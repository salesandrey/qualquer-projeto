

import 'dart:convert';

import 'package:http/http.dart';

class FavoriteRepository{

  final int userID;

  FavoriteRepository({this.userID});


  Future<void> insert(String value,int userID,int userFavorite,String nameAbrev) async {
    String url = "https://padmed.lanconi.com.br/favoriteInsert.py";

    var currentFilter = jsonEncode(
        {
          "nomeAbrev": nameAbrev,
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
      return jsonDecode(response.body);
    }else{
      return null;
    }
  }

  Stream get loadingFavorites async*{
    yield await getUsersAdd(userID);
  }

  Future <dynamic> getMatches(int idUser) async{
    String url = "https://padmed.lanconi.com.br/matchGet.py";
    var currentFilter = jsonEncode(
        {
          "idUsuario": idUser,
          "status":"match"
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      return jsonDecode(response.body);
    }else{
      print(response.statusCode);
      return null;
    }
  }

  Stream get loadingGodFathers async*{
    yield await getMatches(userID);
  }

}