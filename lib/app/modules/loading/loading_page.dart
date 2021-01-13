import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'loading_controller.dart';

class LoadingPage extends StatefulWidget {
  final String screenCame;
  const LoadingPage({Key key, this.screenCame,}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState(screenCame: screenCame);
}

class _LoadingPageState extends ModularState<LoadingPage, LoadingController> with SingleTickerProviderStateMixin {

  final String screenCame;
  AnimationController _controller;

  _LoadingPageState({this.screenCame});



  @override
  void initState() {
    super.initState();
    controller.loadingMessages();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    if(screenCame=="Register") {
      return WillPopScope(
        onWillPop: ()async{
          return false;
        },
        child: Scaffold(
          body: SafeArea(
            child: Center(
              child: Container(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(flex: 1,),
                      Center(
                        child: AnimatedBuilder(
                          animation: _controller,
                          builder: (_, child) {
                            return Transform.rotate(
                              angle: _controller.value * 2 * 3.14,
                              child: child,
                            );
                          },
                          child: Image.asset(
                            "assets/images/icon.png", width: 58, height: 58,),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Text("Woohoo!", textAlign: TextAlign.center,
                          style: TextStyle(color: kCheck,
                              fontFamily: "Montserrat Bold",
                              fontSize: 18),),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        child: Text(
                          "Suas respostas foram registradas.\nAguarde enquanto sua tela inicial está sendo configurada.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16,
                              color: kGrey,
                              fontFamily: "Montserrat Regular"),),
                      ),
                      Spacer(flex: 1,),
                      Container(
                        height: 100,
                        alignment: Alignment.center,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.7,
                        child: FadeAnimatedTextKit(
                            duration: Duration(seconds: 2),
                            isRepeatingAnimation: false,
                            text: controller.currentsMessages,
                            onFinished: () {
                              Modular.to.pushNamed("/Tutorial",arguments: "Register");
                            },
                            textStyle: TextStyle(
                                fontSize: 18.0,
                                color: kGrey,
                                fontFamily: "Montserrat Bold"
                            ),
                            textAlign: TextAlign.center,
                            alignment: AlignmentDirectional
                                .topStart // or Alignment.topLeft
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 1,),
                    Center(
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (_, child) {
                          return Transform.rotate(
                            angle: _controller.value * 2 * 3.14,
                            child: child,
                          );
                        },
                        child: Image.asset(
                          "assets/images/icon.png", width: 58, height: 58,),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      child: Text("Woohoo!", textAlign: TextAlign.center,
                        style: TextStyle(color: kCheck,
                            fontFamily: "Montserrat Bold",
                            fontSize: 18),),
                    ),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.8,
                      child: Text(
                        "Login realizado com sucesso",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16,
                            color: kGrey,
                            fontFamily: "Montserrat Regular"),),
                    ),
                    Spacer(flex: 1,),
                    Container(
                      height: 100,
                      alignment: Alignment.center,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.7,
                      child: FadeAnimatedTextKit(
                          duration: Duration(seconds: 2),
                          isRepeatingAnimation: false,
                          text: controller.currentsMessages,
                          onFinished: () {
                            Modular.to.pushReplacementNamed("/Navigator");
                          },
                          textStyle: TextStyle(
                              fontSize: 18.0,
                              color: kGrey,
                              fontFamily: "Montserrat Bold"
                          ),
                          textAlign: TextAlign.center,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
