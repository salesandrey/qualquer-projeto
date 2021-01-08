import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'notification_controller.g.dart';

@Injectable()
class NotificationController = _NotificationControllerBase
    with _$NotificationController;

abstract class _NotificationControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
