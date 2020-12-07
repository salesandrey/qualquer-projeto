import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class RoundedIconCardWidget extends StatelessWidget {

  final String title;

  final Map<String,String> iconType  = {
    "Redes Sociais":"assets/images/share.png",
    "Casos e Aulas":"assets/images/speech-bubble.png",
    "Trabalho Científico":"assets/images/chemistry.png",
    "Rotina Médica":"assets/images/first-aid-kit.png",
    "Mentoria Carreira":"assets/images/target.png"
  };

  final Map<String,String> iconText = {
    "Redes Sociais":"Redes\nSociais",
    "Casos e Aulas":"Casos\ne Aulas",
    "Trabalho Científico":"Trabalho\nCientífico",
    "Rotina Médica":"Rotina\nMédica",
    "Mentoria Carreira":"Mentoria\nCarreira"
  };

  RoundedIconCardWidget({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        height: 80,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 40,
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
                    height: 22,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  iconText[title],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Montserrat Regular"
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
