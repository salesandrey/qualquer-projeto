



import 'dart:convert';

import 'package:http/http.dart';

class MatchRepository{



  Future<bool> matchInsert(String userID,String userMatch, String nameAbr) async {

    final String url = "https://padmed.lanconi.com.br/matchInsert.py";

    var query = jsonEncode(
        {
          "idUsuario": userID,
          "idMatch": userMatch,
          "nomeAbrev": nameAbr
        }
    );

    /*
    {
      "results": {
    "status": "sucesso",
    "msg": "match realizado com sucesso!"
    },
    "codigo": 1
    }

     */


    Response response = await post(url,headers:{"Content-Type": "application/json"},body: query);
    if(response.statusCode == 200){
      print(response.statusCode);
      print(response.body);
    }else{
      print(response.body);
    }
  }


}