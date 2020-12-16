import 'package:PadrinhoMED/app/modules/tutorial/components/buttom_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/text_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class Instruction3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: KfirstColor.withOpacity(0.9),
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: KthirdColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      Text(
                        'Flávia J.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Montserrat Bold",
                        ),
                      ),
                      Text(
                        'Interesse: Pediatra',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: KGreyColor,
                          fontFamily: "Montserrat Bold",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 24,left: 24,right: 24),
                    child: TextWidget(text1: "Nível de Graduação",text2:"Estudante 1º a 8º semestre")),
                Container(
                    padding: EdgeInsets.only(top: 24,left: 24,right: 24),
                    child: TextWidget(text1: "Localização",text2: "São Bernado do Campo, SP")),
                Container(
                  padding: EdgeInsets.only(top: 24,left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contatos de Flávia",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat Bold",
                            color: Color(0xFF050072)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonWidget(text: "E-mail"),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                            ButtonWidget(text: "Instagram")
                          ],
                        ),
                      ),
                      SizedBox(height: 25,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Dados pessoais',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Montserrat Bold",
                            color: KSecondaryColor,
                          ),
                        ),
                        Container(
                          child: Text(
                            'No card, você tem as principais\ninformações de cada pessoa',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: KSecondaryColor,
                                fontFamily: "Montserrat Regular"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    ' Importante: O e-mail e Instagram\nsó aparecem se você e a pessoa\nestiverem conectados no app',
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
    );
  }
}
