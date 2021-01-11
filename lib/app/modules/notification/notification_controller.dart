import 'package:PadrinhoMED/app/models/notification_model.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/notification_repository.dart';
import 'package:PadrinhoMED/app/repositories/user_by_id_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'notification_controller.g.dart';

@Injectable()
class NotificationController = _NotificationControllerBase
    with _$NotificationController;

abstract class _NotificationControllerBase with Store {


  @observable
  ObservableStream<List<NotificationModel>> notifications;

  @action
  Future<void> initStream() async{
    notifications = NotificationRepository(id: 21).notification.asObservable().asBroadcastStream();
  }

  Future<UserMatchModel> getUserNotification(int id) async {
    UserMatchModel model = await UserByIDRepository().getUser(id);
    return model;
  }
}
