import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LogoutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  height: 235,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Card(
                    margin: EdgeInsets.all(0),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 75),
                            child: Text(
                              "Tem certeza que deseja sair?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Montserrat Bold"),
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  height: 56,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: RaisedButton(
                                      onPressed: (){
                                        Modular.to.pushReplacementNamed("/Login");
                                      },
                                      color:Color(0xffcdcae5),
                                      shape: StadiumBorder(),
                                      child: FittedBox(child: Text("SIM",style: TextStyle(color: Color(0xFF6259B2),fontFamily: "Montserrat Bold",fontSize: 18)),)
                                  )
                              ),
                              SizedBox(width: 10,),
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  height: 56,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: RaisedButton(
                                    onPressed: (){
                                      Modular.to.pop();
                                    },
                                    color: Color(0xff6259B2),
                                    shape: StadiumBorder(),
                                    child: FittedBox(child: Text("NÃO",style: TextStyle(color: Kfivthcolor,fontFamily: "Montserrat Bold",fontSize: 18),)),
                                  )
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: -60,
              child: Container(
                height: 136,
                width: 136,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Card(
                  margin: EdgeInsets.all(0),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                  child: Container(
                    padding: EdgeInsets.all(28.0),
                    child: Image(
                      image:AssetImage("assets/images/cry_emoji.png"),
                      height: 80,
                      width: 80,
                    ),
                  ))),
            )
          ],
        ),
      ],
    );
  }
}
