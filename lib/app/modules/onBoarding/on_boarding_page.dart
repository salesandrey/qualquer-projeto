import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:confetti/confetti.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'on_boarding_controller.dart';

class OnBoardingPage extends StatefulWidget {

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState
    extends ModularState<OnBoardingPage, OnBoardingController> {
  //use 'controller' variable to access controller

  ConfettiController confetti;

  @override
  void initState() {
    controller.getName();
    confetti = ConfettiController(duration: Duration(seconds: 20));
    confetti.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
                  width: MediaQuery.of(context).size.width),
              Positioned(
                top: -50,
                child: ConfettiWidget(confettiController: confetti,
                    maximumSize: Size(10,10),
                    minimumSize: Size(7, 7),
                    blastDirectionality: BlastDirectionality.explosive, shouldLoop: true,
                    maxBlastForce: 10,
                    blastDirection: 1,
                    emissionFrequency: 0.1,
                    numberOfParticles: 5,// start again as soon as the animation is finished
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                    Colors.purple
                  ]),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal:40,vertical: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          SizedBox(height: 124,),
                          Container(
                            child: Card(
                              elevation: 4,
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Container(
                                height: 136,
                                width: 136,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/images/thumb.png'),
                                    width: 80,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 32,),
                          Container(
                            child: Center(
                              child: Text(
                                'Prontinho, ${controller.username.split(" ")[0]}!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Montserrat Bold",
                                  color: KblackColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            child: Text(
                              'Agora você já pode explorar nosso\napp! Esse passo a passo estará\ndisponível no menu Ajuda.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF313131),
                                  fontFamily: "Montserrat Regular"
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40,left: 40,right: 40,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.75,
                        height: 56,
                        child: RaisedButton(
                          onPressed: () {
                            Modular.to.pushReplacementNamed("/Navigator");
                          },
                          color:Color(0xff6259B2),
                          elevation: 0,
                          highlightElevation: 0,
                          textColor: Colors.white,
                          shape: StadiumBorder(),
                          child: FittedBox(
                            child: Text('ENTRAR NO APP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Montserrat Bold",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

    });

  }
}