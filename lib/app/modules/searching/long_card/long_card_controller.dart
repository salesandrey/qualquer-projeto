import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'long_card_controller.g.dart';

@Injectable()
class LongCardController = _LongCardControllerBase with _$LongCardController;

abstract class _LongCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
