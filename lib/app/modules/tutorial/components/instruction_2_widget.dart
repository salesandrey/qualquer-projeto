import 'package:PadrinhoMED/app/modules/tutorial/components/head_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class Instruction2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: KfirstColor.withOpacity(0.9),
      child: Column(

        children: <Widget>[
          HeadWidget(
            color: KLightPurple,
            title:"Mostrando lista de",
            titleColor: KBlueColor,
            head:"Mais indicados para você",
            smallHead: " ",
            headColor: KBlueTextColor),
          SizedBox(height: 32,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image:AssetImage('assets/images/rotated-right-arrow@2x.png'),
                  width: 32,
                  height: 80,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Lista em exibição',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Montserrat Bold",
                            color: KSecondaryColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Existem várias formas de\ncarregar uma lista de pessoas\nem nosso app. É sempre\nimportante checar aqui em\ncima o que você está vendo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: KSecondaryColor,
                              fontFamily: "Montserrat Regular"
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Text(
                          'Sempre que você acessar o seu app, a primeira tela será a nossa lista de “Mais indicados para você”',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Montserrat Bold",
                            color: KthirdColor,
                          ),
                        ),
                      ),
                    ],
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
