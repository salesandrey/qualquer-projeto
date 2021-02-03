import 'package:PadrinhoMED/app/modules/my_favorites/my_favorite_store.dart';
import 'package:PadrinhoMED/app/modules/my_matches/my_matches_store.dart';
import 'package:PadrinhoMED/app/modules/my_real_matches/my_real_matches_store.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'app_controller.g.dart';


class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {


  _AppControllerBase({this.myFavoriteStore,this.myMatchesStore,this.myRealMatchesStore});

  @observable
  MyFavoriteStore myFavoriteStore;

  @observable
  MyMatchesStore myMatchesStore;

  @observable
  MyRealMatchesStore myRealMatchesStore;
}
