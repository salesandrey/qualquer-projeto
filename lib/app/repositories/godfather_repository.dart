import 'dart:convert';

import 'package:http/http.dart';

class GodfatherRepository{

  final int userID;

  GodfatherRepository({this.userID});
  Future<dynamic> getMatches(int idUser) async{
    print("rodou matches");
    String url = "https://padmed.lanconi.com.br/matchGet.py";

    var currentFilter = jsonEncode(
        {
      "idUsuario": "31",
      "status":"match"
        });

    Response response = await post(url,headers:{"Content-Type": "application/json"},body: currentFilter);

    if(response.statusCode==200){
      print(jsonDecode(response.body));
      print("Rodou aqui");
      return jsonDecode(response.body);
    }else{
      print(response.statusCode);
      return null;
    }
  }

  Stream get loadingGodFathers async* {
    print("rodou");
    yield await getMatches(userID);
  }

}