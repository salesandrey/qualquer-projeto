import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_controller.dart';
import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_page.dart';
import 'package:PadrinhoMED/app/global_components/dialog_location_filter/dialog_location_filter_controller.dart';
import 'package:PadrinhoMED/app/global_components/dialog_location_filter/dialog_location_filter_page.dart';
import 'package:PadrinhoMED/app/modules/home/componentes/card_colorfull_widget.dart';
import 'package:PadrinhoMED/app/modules/home/componentes/premium_dialog_widget.dart';
import 'package:PadrinhoMED/app/modules/match/models/head_model.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/uf_brazil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  Future<void> initController() async{
    controller.changeLoading(true);
    await controller.getCurrentUser();
    await controller.getUsers();
    await controller.getMostIndication();
    await controller.getRecentUsers();
    controller.initStream();
    controller.loadingStates();
    controller.changeLoading(false);
  }

  Future<void> initLocationFilter() async{

    controller.changeLoading(true);
    Modular.to.pop();
    controller.changeState(controller.stateDialog);
    controller.changeCity(controller.cityDialog);
    await controller.getUsers();
    await controller.getMostIndication();
    await controller.getRecentUsers();
    controller.initStream();
    controller.loadingStates();
    controller.changeLoading(false);

  }

  @override
  void initState() {
    initController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return ModalProgressHUD(
        color: Color(0xFF6259B2),
        inAsyncCall: controller.loading,
        child: Scaffold(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                    SizedBox(height: 1,),
                                    Text(
                                      controller.premium? (controller.city==null)? "":
                                      controller.city.isEmpty ? "${controller.state}":
                                      "${controller.city}, ${UFBrazil.ufBrazil.keys.firstWhere((element) => UFBrazil.ufBrazil[element]==controller.state)}":
                                      "Todo Brasil",
                                      style: TextStyle(
                                        color: controller.premium?Colors.black:kGrey,
                                        fontFamily: "Montserrat Bold",
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  if(controller.premium){
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Observer(builder: (_){
                                            return LocationFilterDialog(
                                                controller: DialogLocationFilterController(
                                                    changeCity: controller.changeCityDialog,
                                                    changeState: controller.changeStateAndCity,
                                                    ufs: controller.ufs,
                                                    buttonActivate: controller.activateButton,
                                                    city: controller.cityDialog,
                                                    state: controller.stateDialog,
                                                    cities: controller.cities,
                                                    loadFilter: initLocationFilter
                                                ));
                                          });

                                        });
                                  }else {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return PremiumDialog();
                                        });
                                  }
                                },
                                child: Container(
                                  child: FittedBox(
                                    child: Text(
                                      "editar",
                                      style: TextStyle(
                                          color: controller.premium?Color(0xFF6259B2):kGrey,
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
                          margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                CardColorFullWidget(
                                  color: KPinkColor,
                                  title: "Estudantes",
                                  description: "1º ao 8º semestre",
                                  navigator: ()
                                  {
                                    controller.changeFilter("Estudantes (1º ao 8º semestre)");
                                    Modular.to.pushNamed("/Match",
                                        arguments:[
                                          controller.listFiltered,
                                          HeadModel(color:KPinkColor,textColor: Colors.black,name: "Estudantes (1º ao 8º semestre)"),
                                          controller.currentUser.id,
                                          controller.currentUser.tipo,
                                          "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                        ]);
                                  },
                                ),
                                CardColorFullWidget(
                                  color: KPurple,
                                  title: "Internos",
                                  description: "9º ao 12º semestre",
                                  navigator: ()
                                  {
                                    controller.changeFilter("Internato (9º ao 12º semestre)");
                                    Modular.to.pushNamed("/Match",arguments:[
                                      controller.listFiltered,
                                      HeadModel(color:KPurple,textColor: Colors.black,name: "Internos (9º ao 12º semestre)"),
                                      controller.currentUser.id,
                                      controller.currentUser.tipo,
                                      "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                    ]);
                                  },
                                ),
                                CardColorFullWidget(
                                  color: KAzulColor,
                                  title: "Médicos",
                                  description: "Generalistas",
                                  navigator: ()
                                  {
                                    controller.changeFilter("Médico Generalista");

                                    Modular.to.pushNamed("/Match",arguments:[
                                      controller.listFiltered,
                                      HeadModel(color:KAzulColor,textColor: Colors.black,name:"Médicos Generalistas"),
                                      controller.currentUser.id,
                                      controller.currentUser.tipo,
                                      "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                    ]);
                                  },
                                ),
                                CardColorFullWidget(
                                  color: KGreenColor,
                                  title: "Residentes",
                                  description: "Em especialização",
                                  navigator: ()
                                  {
                                    controller.changeFilter("Em Especialização / Residente");
                                    Modular.to.pushNamed("/Match",arguments:[
                                      controller.listFiltered,
                                      HeadModel(color:KGreenColor,textColor: Colors.black,name:"Residentes em especialização"),
                                      controller.currentUser.id,
                                      controller.currentUser.tipo,
                                      "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                    ]);
                                  },
                                ),
                                CardColorFullWidget(
                                  color: KYellowColor,
                                  title: "Médicos",
                                  description: "Especialistas",
                                  navigator: ()
                                  {
                                    controller.changeFilter("Médicos Especialista");
                                    Modular.to.pushNamed("/Match",arguments:[
                                      controller.listFiltered,
                                      HeadModel(color:KYellowColor,textColor: Colors.black,name:"Médicos Especialistas"),
                                      controller.currentUser.id,
                                      controller.currentUser.tipo,
                                      "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                    ]);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 24),
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
                                            Modular.to.pushNamed("/Match",arguments:[
                                              controller.mostIndication,
                                              HeadModel(color:KLightPurple,textColor: Color(0xFF050072), name: "Mais indicados para você"),
                                              controller.currentUser.id,
                                              controller.currentUser.tipo,
                                              "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                            ]);
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
                              SizedBox(height: 8,),
                              Container(
                                height: controller.mostIndication!=null && controller.mostIndication.length!=0?controller.mostIndication.length>=3?300:100 * controller.mostIndication.length :15,
                                child: ListView.builder(
                                    shrinkWrap:controller.mostIndication!=null?controller.mostIndication.length>=3?false:true:true,
                                    itemCount: controller.mostIndication!=null?controller.mostIndication.length>=3?3:controller.mostIndication.length:0,
                                    itemBuilder: (BuildContext context,int index){
                                      return CardUserWidget(controller: CardUserWidgetController(
                                          user: controller.mostIndication[index],
                                          id:controller.currentUser.id,
                                          like: false,
                                          nameAbr: "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                      ));
                                    }),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                            Container(
                              margin: const EdgeInsets.only(top: 24),
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
                                          Modular.to.pushNamed("/Match",arguments:[
                                            controller.recentUsers,
                                            HeadModel(color:KLightPurple,textColor: Color(0xFF050072),name: "Acabaram de entrar no app"),
                                            controller.currentUser.id,
                                            controller.currentUser.tipo,
                                            "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}."
                                          ]);
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
                                height: controller.recentUsers!=null && controller.recentUsers.length!=0?
                                controller.recentUsers.length>=3?300:100.0 * controller.recentUsers.length :15,
                                child: ListView.builder(
                                    shrinkWrap: controller.recentUsers!=null?controller.recentUsers.length>=3?false:true:true,
                                    itemCount: controller.recentUsers!=null?controller.recentUsers.length>=3?3:controller.recentUsers.length:0,
                                    itemBuilder: (BuildContext context,int index){
                                      return CardUserWidget(
                                      controller: CardUserWidgetController(
                                          user: controller.recentUsers[index],
                                          id:controller.currentUser.id,
                                          nameAbr: "${controller.currentUser.nome.split(" ").first} ${controller.currentUser.nome.split(" ").last.substring(0,1)}.",
                                          like: controller.recentUsers[index].id==1));
                                    }),
                              )]))])
              ),
            ),
          )));
    });
  }
}
