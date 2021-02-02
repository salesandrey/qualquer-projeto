import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:mobx/mobx.dart';

part 'my_favorite_store.g.dart';


class MyFavoriteStore = _MyFavoriteStoreBase with _$MyFavoriteStore;

abstract class _MyFavoriteStoreBase with Store{


  @observable
  ObservableList<int> favoritesIndex = ObservableList<int>();

  @observable
  Future<void> startFavorite(int userID) async{
    List<UserMatchModel> list = await  FavoriteRepository().getUsersAdd(userID);
    if(list!=null) {
      favoritesIndex = list.map((e) => e.id).toList().asObservable();
    }
  }

  @action
  Future<void> addFavorite(int value) async{
    favoritesIndex.add(value);
  }

  @action
  Future<void> removeFavorite(int value) async{
    favoritesIndex.removeWhere((element) => element==value);
  }
}


