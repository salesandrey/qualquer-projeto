import 'package:PadrinhoMED/app/modules/telas_temporarias/certificados1.dart';
import 'package:PadrinhoMED/app/modules/telas_temporarias/premium.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class P2MeusCertificados4 extends StatefulWidget {

  static String id = 'P2MeusCertificados4';

  @override
  _P2MeusCertificados4State createState() => _P2MeusCertificados4State();
}

class _P2MeusCertificados4State extends State<P2MeusCertificados4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios,
                                color: Kdeep_perpleColor,
                                size: 18,
                              ),
                              Text('VOLTAR',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Kdeep_perpleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Text('Meus Certificados',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Kdeep_perpleColor,
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            child: Text('Selecione o certificado para abrir:',
                              style: TextStyle(
                                fontSize: 15,
                                color: KGreyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  new MaterialPageRoute(builder: (context)=>P2MeusCertificados1(),),

                                );
                              },
                              child: Card(
                                elevation: 4,
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Container(
                                  height: 136,
                                  width: 136,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Image(
                                      image: AssetImage('assets/see-no-evil-monkey_1f648@2x.png'),
                                      width: 80,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              'Putz! Com o plano Free\ndo PadrinhoMed não vai\nrolar nenhum certificado',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: KblackColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              'Se quiser conhecer nossos planos\nPremium, clique aqui embaixo:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: KgreyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.75,
                        height: 56,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              new MaterialPageRoute(builder: (context) => P4ContaPremium1(),),
                            );
                          },
                          color:Color(0xffffbe6926).withOpacity(0.12),
                          elevation: 0,
                          highlightElevation: 0,
                          textColor: KblackColor,
                          shape: StadiumBorder(),
                          child: FittedBox(
                            child: Text('CONHECER PLANOS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: KblackColor,
                              ),
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
    );
  }
}
