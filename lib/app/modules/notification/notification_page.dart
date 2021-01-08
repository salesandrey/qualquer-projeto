import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'notification_controller.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState
    extends ModularState<NotificationPage, NotificationController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0.5,
          backgroundColor: Color(0xFFFAFAFA),
          title: Text("Notificações",
            textAlign: TextAlign.left,style: TextStyle(
                color: Colors.black,
                fontFamily: "Montserrat Bold",fontSize: 18),),
        ),
        body: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
