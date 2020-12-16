import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/home/componentes/card_colorfull_widget.dart';
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
  void initState() {
    controller.getCurrentUser();
    controller.getUsers();
    super.initState();
  }

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
                            FittedBox(
                              child: Text(
                                "Procurando por afilhados em",
                                style: TextStyle(
                                  color: KGreyColor,
                                  fontSize: 12,
                                  fontFamily: "Montserrat Regular"
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                "Todo Brasil",
                                style: TextStyle(
                                  color: kGrey,
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          child: FittedBox(
                            child: Text(
                              "editar",
                              style: TextStyle(
                                  color: kGrey,
                                  fontFamily: "Montserrat Bold",
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
                        CardColorFullWidget(
                          color: KPinkColor,
                          title: "Estudantes",
                          description: "1º a 8º semestre",
                          navigator: ()
                          {
                            controller.changeFilter("Estudante (1º ao 8º semestre)");
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.listFiltered,HeadModel(color:KPinkColor,textColor: Colors.black,name: "Estudante (1º ao 8º semestre)"),controller.currentUser.id]);
                          },
                        ),
                        CardColorFullWidget(
                          color: KPurple,
                          title: "Internos",
                          description: "9º ao 12º semestre",
                          navigator: ()
                          {
                            controller.changeFilter("Interno (9º ao 12º semestre)");
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.listFiltered,HeadModel(color:KPurple,textColor: Colors.black,name: "Interno (9º ao 12º semestre)"),controller.currentUser.id]);
                          },
                        ),
                        CardColorFullWidget(
                          color: KAzulColor,
                          title: "Médicos",
                          description: "Graduados",
                          navigator: ()
                          {
                            controller.changeFilter("Médico Graduado");

                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.listFiltered,
                              HeadModel(color:KAzulColor,textColor: Colors.black,name:"Médicos Graduado"),controller.currentUser.id]);
                          },
                        ),
                        CardColorFullWidget(
                          color: KGreenColor,
                          title: "Residentes",
                          description: "Em especialização",
                          navigator: ()
                          {
                            controller.changeFilter("Em Especialização / Residente");
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.listFiltered,HeadModel(color:KGreenColor,textColor: Colors.black,name:"Residentes em especialização"),controller.currentUser.id]);
                          },
                        ),
                        CardColorFullWidget(
                          color: KYellowColor,
                          title: "Médicos",
                          description: "Especialistas",
                          navigator: ()
                          {
                            controller.changeFilter("Médico Especialista");
                            Modular.to.pushReplacementNamed("/Match",arguments:[controller.listFiltered,HeadModel(color:KYellowColor,textColor: Colors.black,name:"Médicos Especialistas"),controller.currentUser.id]);
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
                            FittedBox(
                                child: Text(
                                  "Mais indicados para você",
                                  style: TextStyle(fontSize: 15, color: KBlueTextColor,fontFamily: "Montserrat Regular"),
                                )),
                            FittedBox(
                                child: InkWell(
                                  onTap: (){
                                    //Modular.to.pushReplacementNamed("/Match",arguments:[controller.mostIndicationCards,HeadModel(color:Color(0xFF05007226),textColor: Color(0xFF050072),name: "Mais indicados para você")]);
                                  },
                                  child: Text(
                                    "Ver tudo",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: KBlueTextColor,
                                        fontFamily: "Montserrat Bold",
                                        decoration: TextDecoration.underline),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                                child: Text(
                                  "Acabaram de entrar no app",
                                  style: TextStyle(fontSize: 15, color: KBlueTextColor,fontFamily: "Montserrat Regular"),
                                )),
                            FittedBox(
                                child: InkWell(
                                  onTap: (){
                                    //Modular.to.pushReplacementNamed("/Match",arguments:[controller.needHelp,HeadModel(color:Color(0xFF05007226),textColor: Color(0xFF050072),name: "Precisando da sua ajuda")]);

                                  },
                                  child: Text(
                                    "Ver tudo",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: KBlueTextColor,
                                        fontFamily: "Montserrat Bold",
                                        decoration: TextDecoration.underline),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
