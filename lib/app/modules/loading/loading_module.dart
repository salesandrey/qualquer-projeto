import 'loading_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'loading_page.dart';

class LoadingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $LoadingController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoadingPage(screenCame: args.data,)),
      ];

  static Inject get to => Inject<LoadingModule>.of();
}
