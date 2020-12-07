import 'package:PadrinhoMED/app/modules/tutorial/components/buttom_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/text_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class Instruction3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: KfirstColor.withOpacity(0.9),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
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
                  TextWidget(text1: "Nível de Graduação",text2:"Estudante 1º a 8º semestre"),
                  TextWidget(text1: "Localização",text2: "São Bernado do Campo, SP"),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Contatos de Flávia",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Montserrat Bold",
                              color: Color(0xFF050072)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ButtonWidget(text: "E-mail"),
                              ButtonWidget(text: "Instagram")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
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
                            child: FittedBox(
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: FittedBox(
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
