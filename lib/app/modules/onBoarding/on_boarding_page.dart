import 'package:PadrinhoMED/app/styles/constants.dart';
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



  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Scaffold(
        body: Stack(
          children: [
            Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width),
            FlareActor(
              "assets/animation/party.flr",
              alignment:Alignment.center,
              fit:BoxFit.contain,
              animation:"boom",isPaused: !mounted,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
              child: Column(
                children: <Widget>[
                  Spacer(flex: 1,),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Card(
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
                              ],
                            ),
                          ),
                          Container(
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  'Prontinho, ${controller.username}!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Montserrat Bold",
                                    color: KblackColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  'Agora você já pode explorar nosso\napp! Esse passo a passo estará\ndisponível no menu Ajuda, bem\ncomo uma série de outras dúvidas.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: KgreyColor,
                                      fontFamily: "Montserrat Regular"
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  Expanded(
                    flex: 2,
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
                                    fontSize: 16,
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
          ],
        ),
      );

    });

  }
}
