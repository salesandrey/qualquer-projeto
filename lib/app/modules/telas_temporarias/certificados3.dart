import 'package:PadrinhoMED/app/modules/telas_temporarias/certificados4.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class P2MeusCertificados3 extends StatefulWidget {

  static String id = 'P2MeusCertificados3';

  @override
  _P2MeusCertificados3State createState() => _P2MeusCertificados3State();
}

class _P2MeusCertificados3State extends State<P2MeusCertificados3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBlackLightTextColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child:Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios,
                        color: KSecondaryColor,
                        size: 18,
                      ),
                      InkWell(
                        onTap:(){Navigator.pop(context);},
                        child: Text('VOLTAR',
                          style: TextStyle(
                            fontSize: 15,
                            color: KSecondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: KSecondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child:Text('Proporção A4',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color:Color(0xffED7AA0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width*0.48,
                        height: 48,
                        child: RaisedButton(
                          elevation: 0,
                          highlightElevation: 0,
                          onPressed: () {},
                          color: KSecondaryColor,
                          textColor: Kdeep_PurpleAccentColor,
                          shape: StadiumBorder(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage('assets/images/share.png'),
                                width: 22,
                              ),
                              Flexible(
                                child: FittedBox(
                                  child: Text('Compartilhar',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 48,
                        child: RaisedButton(
                          elevation: 0,
                          highlightElevation: 0,
                          onPressed: () {
                            Navigator.of(context).push(
                                new MaterialPageRoute(builder: (context)=>P2MeusCertificados4(),)
                            );
                          },
                          color: KSecondaryColor,
                          textColor: Kdeep_PurpleAccentColor,
                          shape: StadiumBorder(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage('assets/images/download.png'),
                                width: 22,
                              ),
                              Flexible(
                                child: FittedBox(
                                  child: Text('Baixar',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}