import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_user_widget_controller.g.dart';

@Injectable()
class CardUserWidgetController = _CardUserWidgetControllerBase
    with _$CardUserWidgetController;

abstract class _CardUserWidgetControllerBase with Store {

  _CardUserWidgetControllerBase({this.user,this.id,this.like});

  @observable
  UserMatchModel user;

  @observable
  int id;

  @observable
  bool like;

  @observable
  String typeSearch;

  @observable
  bool patronize = false;

  @action
  Future<void> changeLike() async{
    like = !like;
    await FavoriteRepository().insert(like?"like":"dislike", id, user.id);
  }
}
