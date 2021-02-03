import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'godfather_controller.g.dart';

@Injectable()
class GodfatherController = _GodfatherControllerBase with _$GodfatherController;

abstract class _GodfatherControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
