import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class CardProductWidget extends StatelessWidget {


  final String title;
  final String price;
  final String cents;
  final String certifications;
  final int filter;
  final Function goToDetails;

  const CardProductWidget({Key key, this.title, this.price, this.certifications, this.filter, this.cents, this.goToDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Kdeep_perpleColor,
          width: 1,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7),
                        topLeft: Radius.circular(7)),
                    color: Kdeep_perpleColor,
                  ),
                  child: Text(
                    title,
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
                                TextSpan(text: price,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: "Montserrat Bold",
                                      color: KblackColor,
                                    )),
                                TextSpan(text: cents,
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
                            horizontal: 10, vertical: 10),
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
                                    certifications,
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
                            horizontal: 10, vertical: 2),
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
                                    "$filter filtros de busca",
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -15,
            child: Container(
                height: 32,
                width: MediaQuery.of(context).size.width * 0.3,
                child: RaisedButton(
                    onPressed: goToDetails,
                    color: Kdeep_PurpleAccentColor,
                    elevation: 0,
                    shape: StadiumBorder(),
                    child: FittedBox(
                        child: Text("É ESSE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Montserrat Bold",
                        fontSize: 12,
                        color: KwhiteColor),
                    )))),
          )
        ],
      ),
    );
  }
}
