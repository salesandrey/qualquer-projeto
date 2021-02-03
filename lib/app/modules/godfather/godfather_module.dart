import 'godfather_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'godfather_page.dart';

class GodfatherModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $GodfatherController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => GodfatherPage()),
      ];

  static Inject get to => Inject<GodfatherModule>.of();
}
