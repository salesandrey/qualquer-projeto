import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'match_controller.g.dart';

@Injectable()
class MatchController = _MatchControllerBase with _$MatchController;

abstract class _MatchControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
