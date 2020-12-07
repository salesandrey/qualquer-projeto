import 'package:PadrinhoMED/app/modules/telas_temporarias/certificados5.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class P2MeusCertificados1 extends StatefulWidget {
  static String id = 'P2MeusCertificados1';

  @override
  _P2MeusCertificados1State createState() => _P2MeusCertificados1State();
}

class _P2MeusCertificados1State extends State<P2MeusCertificados1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
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
                              Icon(
                                Icons.arrow_back_ios,
                                color: Kdeep_perpleColor,
                                size: 18,
                              ),
                              Text(
                                'VOLTAR',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Kdeep_perpleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          'Meus Certificados',
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
                            child: Text(
                              'Selecione o certificado para abrir:',
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
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  new MaterialPageRoute(builder: (context)=>P2MeusCertificados5()),

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
                                      image: AssetImage(
                                          'assets/images/man-shrugging_1f937-200d-2642-fe0f@2x.png'),
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
                        margin: const EdgeInsets.symmetric(vertical: 25),
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              'Você ainda não possui\nnenhum certificado…',
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
                          child: Column(
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Precisa de ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: KGreyColor,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                  TextSpan(
                                    text: "ajuda ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Kdeep_PurpleAccentColor,
                                      decoration:TextDecoration.underline,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                  TextSpan(
                                    text: "para\nsaber como funciona?",
                                    style: TextStyle(
                                      fontSize: 15, color: KGreyColor,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                ]),
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
