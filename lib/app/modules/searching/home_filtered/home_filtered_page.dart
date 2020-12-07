import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_filtered_controller.dart';

class HomeFilteredPage extends StatefulWidget {
  final String title;
  const HomeFilteredPage({Key key, this.title = "HomeFiltered"})
      : super(key: key);

  @override
  _HomeFilteredPageState createState() => _HomeFilteredPageState();
}

class _HomeFilteredPageState extends ModularState<HomeFilteredPage, HomeFilteredController> {
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
                  margin: const EdgeInsets.symmetric(horizontal: 10),
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container()


                      /*

                  Column(

                    children: [
                      Cardss(
                        colr: KGreenColor,
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
                        colr: KGreenColor,
                        txt1: "Flávia J.",
                        txt2: " G.O.",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                        ico: Icons.favorite,
                      ),
                      Cardss(
                        colr: KGreenColor,
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
                        colr: KGreenColor,
                        txt1: "Flávia J.",
                        txt2: " G.O.",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                        ico: Icons.favorite,
                      ),
                      Cardss(
                        colr: KGreenColor,
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
                        colr: KGreenColor,
                        txt1: "Flávia J.",
                        txt2: " G.O.",
                        txt3:
                        "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                        ico: Icons.favorite,
                      ),
                    ],
                  ),

                       */
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
