import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/repositories/match_repository.dart';
import 'package:PadrinhoMED/app/repositories/user_by_id_repository.dart';
import 'package:PadrinhoMED/app/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';

part 'profile_notification_controller.g.dart';


class ProfileNotificationController = _ProfileNotificationControllerBase
    with _$ProfileNotificationController;

abstract class _ProfileNotificationControllerBase with Store {

  _ProfileNotificationControllerBase({this.appController,this.storage});

  ILocalStorage storage;


  @action
  Future<void> initValues(int value) async {
    typeSearch = await storage.get("typeSearch");
    user = await UserByIDRepository().getUser(value);
    print(user);

  }

  @observable
  String typeSearch;

  @observable
  bool like;

  @observable
  bool patronize;

  @observable
  bool officialPatronize;

  @observable
  AppController appController;

  @observable
  UserMatchModel user;

  @observable
  int id;

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
