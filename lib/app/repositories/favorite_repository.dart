

import 'dart:convert';

import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:http/http.dart';

class FavoriteRepository{

  final int userID;

  FavoriteRepository({this.userID});


  Future<void> insert(String value,int userID,int userFavorite,String nameAbrev,String token) async {
    String url = "https://padmed.lanconi.com.br/favoriteInsert.py";

    var currentFilter = jsonEncode(
        {
          "nomeAbrev": nameAbrev,
          "idUsuario": userID,
          "idFavorito": userFavorite,
          "status": value,
          "token": token
        });

    print(currentFilter);

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      return jsonDecode(response.body);
    }else{
      return null;
    }
  }

  Future<List<UserMatchModel>> getUsersAdd(int userID) async {

    String url = "https://padmed.lanconi.com.br/favoriteGet.py";

    var currentFilter = jsonEncode(
        {
          "idUsuario": userID
        }
        );
    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      List<dynamic> list = jsonDecode(response.body)["results"];
      List<UserMatchModel> usersADD = list.map((value) => UserMatchModel.fromMap(value)).toList();
      return usersADD;

    }else{
      return null;
    }
  }

  Stream<List<UserMatchModel>> get loadingFavorites =>
      Stream.periodic(Duration(seconds: 1)).asyncMap((event) => getUsersAdd(userID));

  Future<List<UserMatchModel>> getMatches(int idUser) async{
    String url = "https://padmed.lanconi.com.br/matchGet.py";
    var currentFilter = jsonEncode(
        {
          "idUsuario": idUser,
          "status":"match"
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      List<dynamic> list = jsonDecode(response.body)["results"];
      List<UserMatchModel> matches = list.map((value) => UserMatchModel.fromMap(value)).toList();
      return matches;
    }else{
      return null;
    }
  }

  Future<List<UserMatchModel>> getMyMatchesSolicitation(int idUser) async {

    String url = "https://padmed.lanconi.com.br/matchGet.py";

    var query = jsonEncode(
        {
          "idUsuario": idUser,
          "status":"pendente"
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: query);
    if(response.statusCode==200){

      dynamic data = jsonDecode(response.body);
      if(data["results"]=="Nenhum Registro Localizado"){
        return null;
      }
      List<dynamic> list = data["results"];
      List<UserMatchModel> matches = list.map((value) => UserMatchModel.fromMap(value)).toList();
      return matches;
    }else{
      return null;
    }


  }

  Stream<List<UserMatchModel>> get loadingGodFathers =>
      Stream.periodic(Duration(seconds: 1)).asyncMap((event) => getMatches(userID));

}