import 'package:PadrinhoMED/app/modules/home/home_page.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'favorite_controller.dart';

class FavoritePage extends StatefulWidget {
  final String title;
  const FavoritePage({Key key, this.title = "Favorite"}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState
    extends ModularState<FavoritePage, FavoriteController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: KPrimaryColor,
        appBar: AppBar(
          backgroundColor: KPrimaryColor,
          toolbarHeight: 50,
          bottom: TabBar(
            labelColor: KBlueTextColor,
            labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: .5),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
            unselectedLabelColor: KGreyColor,
            labelPadding: const EdgeInsets.only(bottom: 12),
            indicatorColor: KBlueTextColor,
            indicatorWeight: 4,
            tabs: [
              Text("Afilhados"),
              Text("Padrinhos"),
              Text("Favoritos"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Column(
                  children: [
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
                    Cardss(
                      colr: KPurple,
                      txt1: "Victor J.",
                      txt2: " Clínica",
                      txt3:
                      "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                    ),
                    Cardss(
                      colr: KPurple,
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
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Column(
                  children: [
                    Cardss(
                      colr: KGreenColor,
                      txt1: "Victor J.",
                      txt2: " Clínica",
                      txt3:
                      "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                    ),
                    Cardss(
                      colr: KYellowColor,
                      txt1: "Flávia J.",
                      txt2: " G.O.",
                      txt3:
                      "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                    ),
                    Cardss(
                      colr: KPurple,
                      txt1: "Flávia J.",
                      txt2: " G.O.",
                      txt3:
                      "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: FittedBox(
                                  child: Text(
                                    "Favoritados para Afilhados",
                                    style: TextStyle(fontSize: 15, color: KBlueTextColor),
                                  ))),
                        ],
                      ),
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
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: FittedBox(
                                  child: Text(
                                    "Favoritados para Padrinhos",
                                    style: TextStyle(fontSize: 15, color: KBlueTextColor),
                                  ))),
                        ],
                      ),
                    ),
                    Cardss(
                      colr: KPurple,
                      txt1: "Victor J.",
                      txt2: " Clínica",
                      txt3:
                      "Oferece: Postagens para Redes\nBusca: Acompanhamento de rotina",
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
