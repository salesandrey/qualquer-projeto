import 'package:PadrinhoMED/app/modules/navigator/navigator_controller.dart';
import 'package:PadrinhoMED/app/modules/tutorial/tutorial_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'modules/register/register_controller.dart';
import 'modules/reset_password/reset_password_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TutorialController>(create: (context)=>TutorialController()),
        Provider<RegisterController>(create: (context)=>RegisterController()),
        Provider<ResetPasswordController>(create:(context)=> ResetPasswordController()),
        Provider<NavigatorController>(create:(context)=> NavigatorController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Modular.navigatorKey,
        title: 'PadrinhoMED',
        theme: ThemeData(
          primarySwatch: Colors.green,

        ),
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
