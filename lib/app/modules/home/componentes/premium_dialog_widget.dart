import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class PremiumDialog extends StatelessWidget {

  final String imagePath = "assets/images/free_money.png";
  final String title = "Puts!";
  final String description = "Buscar pessoas pela localização é \num dos recursos exclusivos de \nnossos Planos Premium. Você teria \ninteresse em ver mais detalhes?";
  final Function backToHome = (){Modular.to.pop();};
  final Function goToPremium = (){Modular.to.pushReplacementNamed("/Premium");};

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Card(
                      margin: EdgeInsets.all(0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 94),
                                child: Text(
                                  title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Montserrat Bold"),
                                )),
                            Container(
                                child: Text(
                                  description,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Montserrat Regular"),
                                )),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 40,top: 24),
                                  child: Container(
                                      margin: EdgeInsets.only(top: 15),
                                      height: 56,
                                      width: MediaQuery.of(context).size.width *0.35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: RaisedButton(
                                        onPressed: backToHome,
                                        color: Color(0xffcdcae5),
                                        shape: StadiumBorder(),
                                        child: FittedBox(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 16,bottom: 18,
                                              ),
                                              child: Text("NÃO",style: TextStyle(color: Color(0xFF6259B2),fontFamily: "Montserrat Bold",fontSize: 18),),
                                        )),
                                      )
                                  ),
                                ),
                                SizedBox(width: 16,),
                                Container(
                                  margin: EdgeInsets.only(bottom: 40,top: 24),
                                  child: Container(
                                      margin: EdgeInsets.only(top: 15),
                                      height: 56,
                                      width: MediaQuery.of(context).size.width *0.35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: RaisedButton(
                                        onPressed: goToPremium,
                                        color: Color(0xff6259B2),
                                        shape: StadiumBorder(),
                                        child: FittedBox(child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 16,bottom: 18,
                                          ),
                                          child: Text("CLARO!",style: TextStyle(color: Colors.white,fontFamily: "Montserrat Bold",fontSize: 18),),
                                        )),
                                      )
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: -70,
                  child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      child: Container(
                          padding: EdgeInsets.all(28),
                          height: 136,
                          width: 136,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFFFFFF)),
                          child: Center(child: Image(image: AssetImage(imagePath),fit: BoxFit.contain)))
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}
