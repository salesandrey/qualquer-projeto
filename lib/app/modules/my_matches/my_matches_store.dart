import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:mobx/mobx.dart';

part 'my_matches_store.g.dart';

class MyMatchesStore = _MyMatchesStoreBase with _$MyMatchesStore;


abstract class _MyMatchesStoreBase with Store {


  @observable
  ObservableList<int> matches = ObservableList<int>();

  @action
  Future<void> getMyMatches(int userID) async {
    List<UserMatchModel> list = await  FavoriteRepository().getMyMatchesSolicitation(userID);
    if(list!=null) {
      matches = list.map((e) => e.id).toList().asObservable();
    }
  }

  @action
  void addMyMatches(UserMatchModel model) {
    matches.add(model.id);
  }

  @action
  void removeMyMatches(UserMatchModel model) {
    matches.removeWhere((element) => element==model.id);
  }


}