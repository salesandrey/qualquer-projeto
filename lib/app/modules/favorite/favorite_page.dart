import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_controller.dart';
import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_page.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'favorite_controller.dart';

class FavoritePage extends StatefulWidget {

  final int currentIndex;

  const FavoritePage({Key key, this.currentIndex}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState(currentIndex: currentIndex);
}

class _FavoritePageState extends ModularState<FavoritePage, FavoriteController> {


  final int currentIndex;

  _FavoritePageState({this.currentIndex});

  Future<void> initAsyncFunction() async{
    await controller.getUserID();
    await controller.getInterest();
    controller.initGodfather();
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
        initialIndex: currentIndex,
        length: 2,
        child: Scaffold(
          backgroundColor: KPrimaryColor,
          appBar: AppBar(
            backgroundColor: KPrimaryColor,
            toolbarHeight: 50,
            bottom: TabBar(
              labelColor: KBlueTextColor,
              labelStyle: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15),
              unselectedLabelStyle: TextStyle(fontFamily: "Montserrat Regular", fontSize:15),
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
                child: StreamBuilder<List<UserMatchModel>>(
                      stream: controller.usersADD,
                      builder: (context,snapshot){
                        if(!snapshot.hasData){
                          return Container();
                        }
                        return ListView.builder(
                          shrinkWrap: false,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context,int index){
                            return CardUserWidget(
                                controller: CardUserWidgetController(
                                    changeGlobalLike: (){setState(() {});},
                                    nameAbr: "${snapshot.data[index].nome.split(" ").first} ${snapshot.data[index].nome.split(" ").last.substring(0,1)}.",
                                    appController: controller.appController,
                                    user: snapshot.data[index],id:controller.userID,
                                    like: true));
                          },
                        );
                      }
                    )
                ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                child: StreamBuilder<List<UserMatchModel>>(
                  stream: controller.godfathers,
                  builder: (context, snapshot) {

                    print(snapshot.data);

                    if(!snapshot.hasData){
                      return Container();
                    }
                    return ListView.builder(
                          shrinkWrap: false,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context,int index){
                            return CardUserWidget(controller: CardUserWidgetController(
                                changeGlobalLike: (){setState(() {});} ,
                                nameAbr: "${snapshot.data[index].nome.split(" ").first} ${snapshot.data[index].nome.split(" ").last.substring(0,1)}.",
                                appController: controller.appController,
                                user: snapshot.data[index],
                                id:controller.userID,
                                like: controller.appController.myFavoriteStore.favoritesIndex.contains(snapshot.data[index].id)),);
                          },
                        );
                  }
                )),
            ],
          ),
        ),
      );
    });
  }
}
