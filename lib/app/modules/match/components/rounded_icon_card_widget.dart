import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedIconCardWidget extends StatelessWidget {

  final String title;

  final Map<String,String> iconType  = {
    "Posts para Redes Sociais":"assets/images/share.png",
    "Discussão de Casos Clínicos e Aulas":"assets/images/speech-bubble.png",
    "Trabalhos Científicos":"assets/images/chemistry.png",
    "Acompanhamento de Rotina Médica":"assets/images/first-aid-kit.png",
    "Mentoria sobre Carreira Médica":"assets/images/target.png"
  };

  final Map<String,String> iconText = {
    "Posts para Redes Sociais":"Rede\nSocial",
    "Discussão de Casos Clínicos e Aulas":"Caso\ne Aula",
    "Trabalhos Científicos":"Trabalho\nCientífico",
    "Acompanhamento de Rotina Médica":"Rotina\nMédica",
    "Mentoria sobre Carreira Médica":"Mentoria\nCarreira"
  };

  RoundedIconCardWidget({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.only(top: 0.015 * MediaQuery.of(context).size.height),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: KBlueColor.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(iconType[title]),
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              iconText[title],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.025,
                fontFamily: "Montserrat Regular"
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
