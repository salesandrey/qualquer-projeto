import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';

import 'profile_notification_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'profile_notification_page.dart';

class ProfileNotificationModule extends ChildModule {

  @override
  List<Bind> get binds => [
        Bind((i)=> SharedLocalStorageService()),
        Bind((i)=> AppController()),
        Bind((i) => ProfileNotificationController(
            appController: i.get<AppController>(),
            storage: i.get<SharedLocalStorageService>()))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ProfileNotificationPage(remententUser: args.data)),
      ];

  static Inject get to => Inject<ProfileNotificationModule>.of();
}
