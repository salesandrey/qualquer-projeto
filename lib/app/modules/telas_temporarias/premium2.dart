import 'package:PadrinhoMED/app/modules/telas_temporarias/certificados1.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class P5ContaPremium extends StatefulWidget {
  static String id = "P5ContaPremium";

  @override
  _P5ContaPremiumState createState() => _P5ContaPremiumState();
}

class _P5ContaPremiumState extends State<P5ContaPremium> {
  bool off = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10,bottom: 15),
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
                    'Conta Premium',
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
                        'Veja os detalhes do seu plano',
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
                        txt1: "Meu Plano",
                        txt3: "PadrinhoMed Plus",
                        ico: Icons.arrow_forward_ios,
                      ),
                      Cardss(
                        txt1: "Sazonalidade",
                        txt3: "Plano Trimestral",
                        ico: Icons.arrow_forward_ios,
                      ),
                      Cardss(
                        txt1: "Forma de pagamento",
                        txt3: "MasterCard final 1234",
                        ico: Icons.arrow_forward_ios,
                      ),
                      Divider(),
                      Container(
                        height: 76,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex:8,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:Alignment.centerLeft,
                                      child: FittedBox(
                                        child: Text(
                                          "Renovação automática",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: KBlackColor),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        child: Text("Seu plano vence dia 18/03/2021",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: KBlackColor),),
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
                                      child: Switch(
                                        activeColor: Kdeep_PurpleAccentColor.withOpacity(0.7),
                                        activeTrackColor: Kdeep_PurpleAccentColor.withOpacity(0.1),
                                        value: off,
                                        onChanged: (value) {
                                          if(off == true)
                                          {
                                          }
                                        },
                                      ),
                                    ),
                                  ],
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
            new MaterialPageRoute(builder: (context)=>P2MeusCertificados1(),)
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 77,
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
