import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ListProgramsColumnWidget extends StatelessWidget {

  final String title;

  final Map<String,String> iconType  = {
    "Posts para Redes Sociais":"assets/images/share.png",
    "Discussão de Casos Clínicos e Aulas":"assets/images/speech-bubble.png",
    "Trabalhos Científicos":"assets/images/chemistry.png",
    "Acompanhamento de Rotina Médica":"assets/images/first-aid-kit.png",
    "Mentoria sobre Carreira Médica":"assets/images/target.png"
  };

  final Map<String,String> iconText = {
    "Posts para Redes Sociais":"Posts para Redes Sociais",
    "Discussão de Casos Clínicos e Aulas":"Discussão de Casos Clínicos e Aulas",
    "Trabalhos Científicos":"Trabalhos Científicos",
    "Acompanhamento de Rotina Médica":"Acompanhamento de Rotina Médica",
    "Mentoria sobre Carreira Médica":"Mentoria sobre carreira médica"
  };

  ListProgramsColumnWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: KBlueColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(iconType[title]),
                  height: 19.2,width: 17.27,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          FittedBox(
            child: Text(
              iconText[title],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Montserrat Regular"
              ),
            ),
          ),
        ],
      ),
    );

  }
}
