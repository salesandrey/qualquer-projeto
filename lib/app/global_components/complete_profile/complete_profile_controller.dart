import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'complete_profile_controller.g.dart';

@Injectable()
class CompleteProfileController = _CompleteProfileControllerBase
    with _$CompleteProfileController;

abstract class _CompleteProfileControllerBase with Store {


  _CompleteProfileControllerBase({this.user,this.id,this.like,this.typeSearch,this.nameAbr});

  @observable
  UserMatchModel user;

  @observable
  int id;

  @observable
  bool like;

  @observable
  String typeSearch;

  @observable
  bool patronize = true;

  @action
  void changePatronize(){
    patronize = !patronize;
  }

  @observable
  String nameAbr = "";

  Function favorite;

  @action
  Future<void> changeLike() async{
    like = !like;
    await FavoriteRepository().insert(like?"like":"dislike", id, user.id,nameAbr);
    favorite();
  }

}
