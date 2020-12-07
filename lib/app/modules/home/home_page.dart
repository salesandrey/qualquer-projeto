import 'package:PadrinhoMED/app/modules/match/models/head_model.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: KSecondaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  "Procurando por afilhados em",
                                  style: TextStyle(
                                    color: KGreyColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  "São Paulo, SP",
                                  style: TextStyle(
                                    color: KGreyColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Flexible(
                          child: FittedBox(
                            child: Text(
                              "editar",
                              style: TextStyle(
                                  color: Color(0xff6259B2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ColorFullCards(
                          col: KPinkColor,
                          txt1: "Estudantes",
                          txt2: "1º a 8º semestre",
                          navigator: ()
                          {
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.students,HeadModel(color:KPinkColor,textColor: Colors.black,name: "Estudante (1º ao 8º semestre)")]);
                          },
                        ),
                        ColorFullCards(
                          col: KPurple,
                          txt1: "Internos",
                          txt2: "9º ao 12º semestre",
                          navigator: ()
                          {
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.intern,HeadModel(color:KPurple,textColor: Colors.black,name: "Interno (9º ao 12º semestre)")]);
                          },
                        ),
                        ColorFullCards(
                          col: KAzulColor,
                          txt1: "Médicos",
                          txt2: "Graduados",
                          navigator: ()
                          {
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.graduations,HeadModel(color:KAzulColor,textColor: Colors.black,name:"Médicos Graduado")]);
                          },
                        ),
                        ColorFullCards(
                          col: KGreenColor,
                          txt1: "Residentes",
                          txt2: "Em especialização",
                          navigator: ()
                          {
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.residents,HeadModel(color:KGreenColor,textColor: Colors.black,name:"Residentes em especialização")]);
                          },
                        ),
                        ColorFullCards(
                          col: KYellowColor,
                          txt1: "Médicos",
                          txt2: "Especialistas",
                          navigator: ()
                          {
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.specialists,HeadModel(color:KYellowColor,textColor: Colors.black,name:"Médicos Especialistas")]);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: FittedBox(
                                    child: Text(
                                      "Mais indicados para você",
                                      style: TextStyle(fontSize: 15, color: KBlueTextColor),
                                    ))),
                            Flexible(
                                child: FittedBox(
                                    child: InkWell(
                                      onTap: (){
                                        Modular.to.pushReplacementNamed("/Match",arguments:[controller.mostIndicationCards,HeadModel(color:Color(0xFF05007226),textColor: Color(0xFF050072),name: "Mais indicados para você")]);

                                      },
                                      child: Text(
                                        "Ver tudo",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: KBlueTextColor,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.underline),
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Cardss(
                        colr: KPinkColor,
                        txt1: "Victor J.",
                        txt2: " Clínica",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                      ),
                      Cardss(
                        colr: KGreenColor,
                        txt1: "Flávia J.",
                        txt2: " G.O.",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                      ),
                      Cardss(
                        colr: KYellowColor,
                        txt1: "Flávia J.",
                        txt2: " G.O.",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                        ico: Icons.favorite,
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: FittedBox(
                                    child: Text(
                                      "Precisando da sua ajuda",
                                      style: TextStyle(fontSize: 15, color: KBlueTextColor),
                                    ))),
                            Flexible(
                                child: FittedBox(
                                    child: InkWell(
                                      onTap: (){
                                        Modular.to.pushReplacementNamed("/Match",arguments:[controller.needHelp,HeadModel(color:Color(0xFF05007226),textColor: Color(0xFF050072),name: "Precisando da sua ajuda")]);

                                      },
                                      child: Text(
                                        "Ver tudo",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: KBlueTextColor,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.underline),
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Cardss(
                        colr: KPurple,
                        txt1: "Victor J.",
                        txt2: " Clínica",
                        txt3: "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                      ),
                      Cardss(
                        colr: KAzulColor,
                        txt1: "Flávia J.",
                        txt2: " G.O.",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                      ),
                      Cardss(
                        colr: KPinkColor,
                        txt1: "Flávia J.",
                        txt2: " G.O.",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
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

class ColorFullCards extends StatefulWidget {
  ColorFullCards({
    this.col,
    this.txt1,
    this.txt2, this.navigator,
  });

  final col;
  final txt1;
  final txt2;
  final Function navigator;

  @override
  _ColorFullCardsState createState() => _ColorFullCardsState();
}

class _ColorFullCardsState extends State<ColorFullCards> {
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: widget.navigator,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 158,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: widget.col,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: FittedBox(
                child: Text(
                  widget.txt1,
                  style: TextStyle(
                    color: KBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  widget.txt2,
                  style: TextStyle(
                    color: KBlackColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cardss extends StatefulWidget {
  Cardss({
    this.colr,
    this.txt1,
    this.txt2,
    this.txt3,
    this.ico,
  });

  final colr;
  final txt1;
  final txt2;
  final txt3;
  final ico;

  @override
  _CardssState createState() => _CardssState();
}

class _CardssState extends State<Cardss> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 91,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: KSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: widget.colr,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                widget.txt1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: KBlackColor,
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                widget.txt2,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: KGreyColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        widget.ico,
                        color: Color(0xff6259B2),
                      ),
                    ],
                  ),
                  FittedBox(
                    child: Text(
                      widget.txt3,
                      style: TextStyle(
                        fontSize: 14,
                        color: KGreyColor,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
