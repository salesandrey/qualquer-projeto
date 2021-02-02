import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';

import 'loading_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'loading_page.dart';

class LoadingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i)=> SharedLocalStorageService()),
        Bind((i)=> LoadingController(
            globalController: i.get<AppController>(),
            storage: i.get<SharedLocalStorageService>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoadingPage(screenCame: args.data,),transition: TransitionType.noTransition),
      ];

  static Inject get to => Inject<LoadingModule>.of();
}
