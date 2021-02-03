import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/repositories/match_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'complete_profile_controller.g.dart';

@Injectable()
class CompleteProfileController = _CompleteProfileControllerBase
    with _$CompleteProfileController;

abstract class _CompleteProfileControllerBase with Store {


  _CompleteProfileControllerBase({
    this.patronize,
    this.user,
    this.id,
    this.like,
    this.typeSearch,
    this.nameAbr,
    this.appController,
    this.officialPatronize});

  @observable
  AppController appController;

  @observable
  UserMatchModel user;

  @observable
  int id;

  @observable
  bool like;

  @observable
  String typeSearch;

  @observable
  bool patronize;

  @observable
  bool officialPatronize;

  @action
  Future<void> changePatronize() async {
    patronize = false;
    appController.myMatchesStore.addMyMatches(user);
    await MatchRepository().matchInsert(id.toString(),user.id.toString(), nameAbr);
  }

  @observable
  String nameAbr = "";

  Function favorite;

  @action
  Future<void> changeLike() async{
    like = !like;
    if(like){
      appController.myFavoriteStore.addFavorite(user.id);
    }else{
      appController.myFavoriteStore.removeFavorite(user.id);
    }
    await FavoriteRepository().insert(like?"like":"dislike", id, user.id,nameAbr,user.token);
  }

}
