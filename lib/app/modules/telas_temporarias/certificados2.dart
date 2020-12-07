import 'package:PadrinhoMED/app/modules/telas_temporarias/certificados3.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class P2MeusCertificados2 extends StatefulWidget {
  static String id = "P2MeusCertificados2";

  @override
  _P2MeusCertificados2State createState() => _P2MeusCertificados2State();
}

class _P2MeusCertificados2State extends State<P2MeusCertificados2> {
  bool off = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
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
                            fontSize: 15,
                            color: Kdeep_perpleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Meus Certificados',
                    style: TextStyle(
                      fontSize: 20,
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
                          color: KBlackLightTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Cardss(
                        txt1: "Certificado #0928102",
                        txt3: "De Guilhermina Mascarenhas\nEm Novembro 2020",
                        ico: Icons.arrow_forward_ios,
                      ),
                      Cardss(
                        txt1: "Certificado #0928102",
                        txt3: "De Guilhermina Mascarenhas\nEm Novembro 2020",
                        ico: Icons.arrow_forward_ios,
                      ),
                      Cardss(
                        txt1: "Certificado #0928102",
                        txt3: "De Guilhermina Mascarenhas\nEm Novembro 2020",
                        ico: Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: KSecondaryColor,
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: FittedBox(
                  child: Text("Quer mais certificados? Faça upgrade!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: KblackColor,
                    ),
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

class Cardss extends StatefulWidget {
  Cardss({
    this.txt1,
    this.txt3,
    this.ico,
  });

  final txt1;
  final txt3;
  final ico;

  @override
  _CardssState createState() => _CardssState();
}

class _CardssState extends State<Cardss> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            new MaterialPageRoute(builder: (context)=>P2MeusCertificados3(),)
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 94,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Kdeep_PurpleAccentColor.withOpacity(0.1),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.2),
          //     blurRadius: 5,
          //     spreadRadius: 1,
          //   ),
          // ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          widget.txt1,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            color: Kdeep_perpleColor,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          widget.txt3,
                          style: TextStyle(
                            fontSize: 16,
                            color: Kdeep_perpleColor,
                            height: 1.3,
                          ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        widget.ico,
                        color: Kdeep_PurpleAccentColor,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
