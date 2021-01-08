import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class CardPremiumDetailsWidget extends StatelessWidget {

  final String title;
  final String numberCertification;
  final String realValue;
  final String centsValue;
  final int numberFilters;

  const CardPremiumDetailsWidget(
      {Key key,
    this.title,
    this.realValue,
    this.centsValue,
    this.numberFilters,
        this.numberCertification}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        border: Border.all(color: Kdeep_perpleColor)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  topLeft: Radius.circular(7)),
              color: Kdeep_perpleColor,
            ),
            child: Text(
              "PadrinhoMed $title",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Montserrat Bold",
                color: KwhiteColor,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: 'R\$',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Montserrar Regular",
                                color: Color(0xFF313131),
                              )),
                          TextSpan(text: "$realValue",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Montserrat Bold",
                                color: KblackColor,
                              )),
                          TextSpan(text: "$centsValue",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Montserrat Bold",
                                color: KblackColor,
                              )),
                        ]
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: FittedBox(
                    child: Text(
                      "no plano anual",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Montserrat Regular",
                        color: Color(0xFF313131),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('assets/images/badge.png'),
                          width: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Flexible(
                          child: FittedBox(
                            child: Text(
                              "Emissão de até 1 (um) certificado digital",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Montserrat Regular",
                                color: Kdeep_perpleColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage(
                              'assets/images/search_interface.png'),
                          width: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Flexible(
                          child: FittedBox(
                            child: Text(
                              "Mais 4 (quatro) filtros de busca exclusivos",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Montserrat Regular",
                                color: Kdeep_perpleColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
