import 'package:PadrinhoMED/app/modules/tutorial/components/rounded_icon_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class Instruction4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
        color: KfirstColor.withOpacity(0.9),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Programas PadrinhoMed',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Montserrat Bold",
                              color: KSecondaryColor,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Os programas que essa pessoas quer participar por aqui!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Montserrat Regular",
                                fontSize: 18,
                                color: KSecondaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      child: Image(
                        image: AssetImage(
                            'assets/images/swirly-scribbled-arrow@2x.png'),
                        width: 85.96,
                        height: 85.96,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *0.23,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: KthirdColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Programas PadrinhoMed",
                              style: TextStyle(
                                  fontSize: 14,fontFamily: "Montserrat Bold",
                                  color: Color(0xFF050072)),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      RoundedIconWidget(
                                        image:'assets/images/share.png',
                                        text:"Rede\nSocial",
                                        roundedColor:KBlueColor.withOpacity(0.2)),
                                      RoundedIconWidget(
                                          image:'assets/images/speech-bubble.png',
                                          text: "Caso e\nAula",
                                          roundedColor:KBlueColor.withOpacity(0.2)),
                                      RoundedIconWidget(
                                          image:'assets/images/chemistry.png',
                                          text: "Trabalho\nCientífico",
                                          roundedColor:KBlueColor.withOpacity(0.2)),
                                      RoundedIconWidget(
                                          image:'assets/images/target.png',
                                          text: "Mentoria\nCarreira",
                                          roundedColor:KBlueColor.withOpacity(0.2)),
                                      RoundedIconWidget(
                                          image:'assets/images/first-aid-kit.png',
                                          text: "Rotina\nMédica",
                                          roundedColor:KBlueColor.withOpacity(0.2)),

                                    ],
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
              ),
            ],
          ),
        ),
      );
  }
}