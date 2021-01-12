import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/notification_model.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/repositories/notification_repository.dart';
import 'package:PadrinhoMED/app/repositories/user_by_id_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';

part 'notification_controller.g.dart';

@Injectable()
class NotificationController = _NotificationControllerBase
    with _$NotificationController;

abstract class _NotificationControllerBase with Store {


  @observable
  ObservableStream<List<NotificationModel>> notifications;

  @observable
  int id;

  @action
  Future<void> takeID() async{
    ILocalStorage storage = SharedLocalStorageService();
    String newID = await storage.get("id");
    id = toInt(newID);
  }

  @action
  Future<void> initStream() async{
    notifications = NotificationRepository(id: id).notification.asObservable().asBroadcastStream();
  }

  Future<UserMatchModel> getUserNotification(int id) async {
    UserMatchModel model = await UserByIDRepository().getUser(id);
    return model;
  }
}
