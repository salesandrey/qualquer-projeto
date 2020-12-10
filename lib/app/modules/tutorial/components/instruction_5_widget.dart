import 'package:PadrinhoMED/app/modules/tutorial/components/content_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Instruction5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: KfirstColor.withOpacity(0.9),
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 65,),
            Container(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text('Barra de Controle',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Montserrat Bold",
                            color: KSecondaryColor,
                          ),
                        ),
                        Text(
                          'Aqui embaixo você tem todos os botões de interação',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: KSecondaryColor,
                            fontFamily: "Montserrat Regular"
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:12.0),
                    child: Container(
                      child: Column(
                        children: [
                          ContentWidget(
                            imagePath: "assets/images/match_like.png",
                            text: 'Adicionar pessoa',
                          ),
                          ContentWidget(
                            imagePath: "assets/images/match_dislike.png",
                            text: 'Não adicionar pessoa',
                          ),
                          ContentWidget(
                            imagePath: "assets/images/match_person.png",
                            text: 'Ver perfil completo',
                          ),
                          ContentWidget(
                            imagePath: "assets/images/match_home.png",
                            text: 'Ir para home',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10,top: 33),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('assets/images/up-arrow-4@2x (4).png'),
                            height: 50,
                          ),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('assets/images/up-arrow-4@2x (2).png'),
                            height: 76,
                          ),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('assets/images/up-arrow-4@2x.png'),
                            height: 76,
                          ),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('assets/images/up-arrow-4@2x (3).png'),
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: KSecondaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                                padding: EdgeInsets.all(10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: KSecondaryColor,
                                  boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]
                              ),
                              child: Image(image: AssetImage("assets/images/match_home.png"),fit: BoxFit.contain,)
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                                padding: EdgeInsets.all(14),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: KSecondaryColor,
                                  boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]
                              ),
                              child: Image(image: AssetImage("assets/images/match_dislike.png"),fit: BoxFit.contain,)

                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: KSecondaryColor,
                                boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]
                              ),
                              child: Image(image: AssetImage("assets/images/match_like.png"),fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: KSecondaryColor,
                                  boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]
                              ),
                              child: Image(image: AssetImage("assets/images/match_person.png"),fit: BoxFit.contain,)
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
  }
}