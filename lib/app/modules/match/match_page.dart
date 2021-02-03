import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/match/components/head_widget.dart';
import 'package:PadrinhoMED/app/modules/match/components/match_button_option_widget.dart';
import 'package:PadrinhoMED/app/modules/match/components/swipe_card_widget.dart';
import 'package:PadrinhoMED/app/modules/match/models/head_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/utils/size_config.dart';
import 'package:PadrinhoMED/app/utils/swip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'match_controller.dart';

class MatchPage extends StatefulWidget {

  final bool premium;
  final HeadModel headModel;
  final List<UserMatchModel> listCard;
  final String typeSearch;
  final int id;
  final String nameAbr;

  const MatchPage({Key key, this.headModel, this.listCard,this.id, this.typeSearch, this.nameAbr, this.premium}) : super(key: key);
  @override
  _MatchPageState createState() => _MatchPageState(
      listCard: listCard,headModel: headModel,
      id: id,typeSearch: typeSearch,nameAbr: nameAbr,premium: premium);
}

class _MatchPageState extends ModularState<MatchPage, MatchController> with TickerProviderStateMixin {

  final GlobalKey<SwipeStackState> _swipeKey = GlobalKey<SwipeStackState>();
  final HeadModel headModel;
  final String nameAbr;
  final int id;
  final List<UserMatchModel> listCard;
  final String typeSearch;
  final bool premium;

  _MatchPageState({this.listCard,this.headModel,this.id,this.typeSearch,this.nameAbr,this.premium});

  void notLove() async{
    _swipeKey.currentState.swipeLeft();
    if(listCard.isNotEmpty){
      controller.appController.myFavoriteStore.removeFavorite(listCard.last.id);
      FavoriteRepository().insert("dislike",id, listCard.last.id,nameAbr,listCard.last.token);
      listCard.removeLast();
    }
  }

  void love(){
    _swipeKey.currentState.swipeRight();
    if(listCard.isNotEmpty){
      controller.appController.myFavoriteStore.addFavorite(listCard.last.id);
      FavoriteRepository().insert("like",id, listCard.last.id,nameAbr,listCard.last.token);
      listCard.removeLast();
    }
  }

  void swipeLove(){
    if(listCard.isNotEmpty){
      controller.appController.myFavoriteStore.addFavorite(listCard.last.id);
      FavoriteRepository().insert("like",id, listCard.last.id,nameAbr,listCard.last.token);
      listCard.removeLast();
      setState(() {});
    }
  }

  void swipeNotLove(){
    if(listCard.isNotEmpty){

      controller.appController.myFavoriteStore.removeFavorite(listCard.last.id);
      FavoriteRepository().insert("dislike",id, listCard.last.id,nameAbr,listCard.last.token);
      listCard.removeLast();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return

      WillPopScope(child: Scaffold(
          body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  HeaderWidget(backgroundColor: headModel.color,colorCategory: headModel.textColor,colorTitle: headModel.textColor,title: "Mostrando lista de",nameCategory: headModel.name),
                  SwipeCardWidget(
                    listCard: listCard,
                    swipeKey: _swipeKey,
                    notLove:() {swipeNotLove();},
                    love: swipeLove,
                    premium: premium),
                  Expanded(child: Container()),
                  Container(
                      padding: EdgeInsets.only(bottom: 50),
                      child:MatchButtonOptionWidget(
                        goHome: (){Modular.to.pushReplacementNamed("/Navigator",arguments: [0,0]);},
                        love: (){love();},
                        notLove: (){notLove();},
                        accessProfile: (){Modular.to.pushNamed("/CompleteProfile",arguments: [
                          listCard.last,
                          id,
                          controller.appController.myFavoriteStore.favoritesIndex.contains(listCard.last.id),
                          typeSearch,
                          nameAbr,
                          controller.appController,
                          !controller.appController.myMatchesStore.matches.contains(listCard.last.id),
                          controller.appController.myRealMatchesStore.matches.contains(listCard.last.id)
                        ]);},))
                ])))));
  }
}
