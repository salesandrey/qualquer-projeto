import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'premium_details_controller.g.dart';

@Injectable()
class PremiumDetailsController = _PremiumDetailsControllerBase
    with _$PremiumDetailsController;

abstract class _PremiumDetailsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
