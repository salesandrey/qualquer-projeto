import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'match_controller.g.dart';

@Injectable()
class MatchController = _MatchControllerBase with _$MatchController;

abstract class _MatchControllerBase with Store {

  _MatchControllerBase({this.appController});

  @observable
  AppController appController;
}
