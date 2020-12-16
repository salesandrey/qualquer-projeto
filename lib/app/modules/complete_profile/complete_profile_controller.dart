import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'complete_profile_controller.g.dart';

@Injectable()
class CompleteProfileController = _CompleteProfileControllerBase
    with _$CompleteProfileController;

abstract class _CompleteProfileControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
