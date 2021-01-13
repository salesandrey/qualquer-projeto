import 'package:PadrinhoMED/app/modules/tutorial/components/buttom_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/text_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/tutorial_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Instruction3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TutorialController>(context);
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
                        controller.godFather=="Afilhado"?'Flávia J.':"Maria S.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Montserrat Bold",
                        ),
                      ),
                      Text(
                        controller.godFather=="Afilhado"?'Especialidade: Cirurgia Plástica':"Interesse: Pediatria",
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
                    child: TextWidget(text1: "Nível de Graduação",text2: controller.godFather=="Afilhado"?"Médico Especialista":"Estudante 1º ao 8º semestre")),
                Container(
                    padding: EdgeInsets.only(top: 24,left: 24,right: 24),
                    child: TextWidget(text1: "Localização",text2: controller.godFather=="Afilhado"?"São Paulo, SP":"Rio de Janeiro, RJ")),
                Container(
                  padding: EdgeInsets.only(top: 24,left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.godFather=="Afilhado"?"Contatos de Flávia":"Contatos de Maria",
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
                    "Importante: O e-mail e Instagram\nsó aparecem para aqueles que você adicionou no ícone️",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Montserrat Bold",
                      color: KthirdColor,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "♥️",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
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
