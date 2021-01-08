import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'premium_controller.g.dart';

@Injectable()
class PremiumController = _PremiumControllerBase with _$PremiumController;

abstract class _PremiumControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
