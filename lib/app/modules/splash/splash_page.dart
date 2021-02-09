import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),()
    {
      controller.checkUserLogging();
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "Logo",
        child: Center(
          child: Image.asset("assets/images/VerticalColor.png",width: MediaQuery.of(context).size.width*0.55),
        ),
      ),
    );
  }
}
