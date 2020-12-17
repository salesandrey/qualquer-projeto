import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_controller.dart';
import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_page.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/home/home_page.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'favorite_controller.dart';

class FavoritePage extends StatefulWidget {

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends ModularState<FavoritePage, FavoriteController> {



  Future<void> initAsyncFunction() async{
    await controller.getUserID();
    await controller.getInterest();
    controller.initStream();
  }

  @override
  void initState() {
    initAsyncFunction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: KPrimaryColor,
          appBar: AppBar(
            backgroundColor: KPrimaryColor,
            toolbarHeight: 50,
            bottom: TabBar(
              labelColor: KBlueTextColor,
              labelStyle: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,letterSpacing: .5),
              unselectedLabelStyle: TextStyle(fontFamily: "Montserrat Bold", fontSize:15),
              unselectedLabelColor: KGreyColor,
              labelPadding: const EdgeInsets.only(bottom: 12),
              indicatorColor: KBlueTextColor,
              indicatorWeight: 4,
              tabs: [
                Text("Adicionados",),
                Text("Meus ${controller.typeSearch}"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                child: Observer(builder:(context){
                  if(controller.usersADD!=null && controller.usersADD.data!=null){
                    return ListView.builder(
                      shrinkWrap: false,
                      itemCount: controller.usersADD.data["results"].length,
                      itemBuilder: (BuildContext context,int index){
                        UserMatchModel model  = UserMatchModel.fromMap(controller.usersADD.data["results"][index]);
                        return CardUserWidget(controller: CardUserWidgetController(user: model,id:controller.userID,like: true),);
                      },
                    );
                  }
                  return Container();
                })
                ),
              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Column(
                    children: [

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
