import 'package:PadrinhoMED/app/modules/tutorial/components/head_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class Instruction2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: KfirstColor.withOpacity(0.9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HeadWidget(
            color: KLightPurple,
            title:"Mostrando lista de",
            titleColor: KBlueColor,
            head:"Mais indicados para você",
            smallHead: " ",
            headColor: KBlueTextColor),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image:AssetImage('assets/images/rotated-right-arrow@2x.png'),
                    width: 40,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Lista em exibição',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Montserrat Bold",
                            color: KSecondaryColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          child: FittedBox(
                            child: Text(
                              'Existem várias formas de\ncarregar uma lista de pessoas\nem nosso app. É sempre\nimportante checar aqui em\ncima o que você está vendo',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: KSecondaryColor,
                                  fontFamily: "Montserrat Regular"
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child: Text(
                      'Sempre que você acessar o seu app, a primeira tela será a nossa lista de “Mais indicados para você”',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: KthirdColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
