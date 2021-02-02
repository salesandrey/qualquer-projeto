


import 'dart:convert';

import 'package:PadrinhoMED/app/models/notification_model.dart';
import 'package:http/http.dart';

class NotificationRepository{


  final int id;

  NotificationRepository({this.id});


  Future<void> validateNotifications(String userID,String token) async {

    final String url = "https://padmed.lanconi.com.br/notificacaoValidate.py";

    var query = jsonEncode(
        {
            "idUsuario": userID,
            "token": token
        });
    try {
      Response response = await post(
          url, headers: {"Content-Type": "application/json"}, body: query);

      if (response.statusCode == 200){
        print(response.statusCode);
      }else{
        print(response.statusCode);
      }
    }catch(e){}
  }


  Future<List<NotificationModel>> getNotifications(int id) async{

    final String url = "https://padmed.lanconi.com.br/notificacaoList.py";

    var query = jsonEncode(
        {
          "idUsuario": id
        });
    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);
    if (response.statusCode == 200) {
      List<dynamic> list = jsonDecode(response.body)["results"];
      List<NotificationModel> notifications = list.map((value) => NotificationModel.fromMap(value)).toList();
      return notifications;
    }else{
      print(response.body);
      return null;
    }
  }

  Stream<List<NotificationModel>> get notification =>
     Stream.periodic(Duration(seconds: 1)).asyncMap((event) => getNotifications(id));
}