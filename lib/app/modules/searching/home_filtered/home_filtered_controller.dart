import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_filtered_controller.g.dart';

@Injectable()
class HomeFilteredController = _HomeFilteredControllerBase
    with _$HomeFilteredController;

abstract class _HomeFilteredControllerBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
