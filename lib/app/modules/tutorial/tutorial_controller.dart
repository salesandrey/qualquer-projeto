import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'tutorial_controller.g.dart';

@Injectable()
class TutorialController = _TutorialControllerBase with _$TutorialController;

abstract class _TutorialControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
