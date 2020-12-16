import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ListProgramsColumnWidget extends StatelessWidget {

  final String title;

  final Map<String,String> iconType  = {
    "Redes Sociais":"assets/images/share.png",
    "Casos e Aulas":"assets/images/speech-bubble.png",
    "Trabalho Científico":"assets/images/chemistry.png",
    "Rotina Médica":"assets/images/first-aid-kit.png",
    "Mentoria Carreira":"assets/images/target.png"
  };

  final Map<String,String> iconText = {
    "Redes Sociais":"Posts para Redes Sociais",
    "Casos e Aulas":"Discussão de Casos Clínicos e Aulas",
    "Trabalho Científico":"Trabalhos Científicos",
    "Rotina Médica":"Acompanhar Rotina Médica",
    "Mentoria Carreira":"Mentoria sobre carreira médica"
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
