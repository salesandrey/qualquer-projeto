import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CasesWidget extends StatelessWidget {

  final String title;
  final String description;
  final String imagePath;

  const CasesWidget({Key key, this.title, this.description, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 80),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Montserrat Bold"),
                            )),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                            child: Text(
                              description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Montserrat Regular"),
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                              margin: EdgeInsets.only(top: 15),
                              height: 56,
                              width: 132,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: RaisedButton(
                                onPressed: (){
                                  Modular.to.pop();
                                },
                                color: Color(0xff6259B2),
                                shape: StadiumBorder(),
                                child: FittedBox(child: Text("OK",style: TextStyle(color: Kfivthcolor,fontFamily: "Montserrat Bold",fontSize: 18),)),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: -75,
              child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  child: Container(
                      padding: EdgeInsets.all(20),
                      height: 136,
                      width: 136,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle),child: Image(image: AssetImage(imagePath),fit: BoxFit.contain))
                  )
            )
          ],
        ),
      ],
    );
  }
}
