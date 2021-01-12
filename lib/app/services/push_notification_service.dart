import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService{

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  static var token;


  Future initialize() async{

    if(Platform.isIOS){
      _firebaseMessaging.requestNotificationPermissions(IosNotificationSettings());
    }

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
    _firebaseMessaging.getToken().then((value) => token=value);
  }
}