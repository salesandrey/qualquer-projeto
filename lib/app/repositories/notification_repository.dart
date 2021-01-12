


import 'dart:convert';

import 'package:PadrinhoMED/app/models/notification_model.dart';
import 'package:http/http.dart';

class NotificationRepository{


  final int id;

  NotificationRepository({this.id});


  Future<List<NotificationModel>> getNotifications(int id) async{

    final String url = "https://padmed.lanconi.com.br/notificacaoList.py";

    var query = jsonEncode(
        {
          "id": id
        });
    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);
    if (response.statusCode == 200) {
      List<dynamic> list = jsonDecode(response.body)["results"];
      List<NotificationModel> notifications = list.map((value) => NotificationModel.fromMap(value)).toList();
      return notifications;
    }else{
      return null;
    }
  }

  Stream<List<NotificationModel>> get notification =>
     Stream.periodic(Duration(seconds: 1)).asyncMap((event) => getNotifications(id));
}