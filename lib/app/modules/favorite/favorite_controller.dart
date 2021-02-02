import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';

part 'favorite_controller.g.dart';


class FavoriteController = _FavoriteControllerBase with _$FavoriteController;

abstract class _FavoriteControllerBase with Store {

  _FavoriteControllerBase({this.appController});

  @observable
  AppController appController;

  @observable
  ObservableStream<List<UserMatchModel>> usersADD;

  @observable
  ObservableStream<List<UserMatchModel>> godfathers;

  @observable
  String typeSearch = "";

  @observable
  int userID;

  @action
  Future<void> getInterest() async{
    ILocalStorage storage = SharedLocalStorageService();
    String type= await storage.get("typeSearch");
    if(type=="Afilhado"){
      typeSearch = "Padrinhos";
    }else{
      typeSearch = "Afilhados";
    }
  }

  @action
  Future<void> getUserID() async{
    ILocalStorage storage = SharedLocalStorageService();
    String type= await storage.get("id");
    userID = toInt(type);
  }

  @action
  void initStream(){
    usersADD = FavoriteRepository(userID: userID).loadingFavorites.asObservable().asBroadcastStream();
  }

  @action
  void initGodfather(){
    godfathers = FavoriteRepository(userID: userID).loadingGodFathers.asObservable().asBroadcastStream();
  }

}
