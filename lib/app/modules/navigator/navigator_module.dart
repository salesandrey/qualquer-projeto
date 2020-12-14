import 'navigator_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'navigator_page.dart';

class NavigatorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $NavigatorController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => NavigatorPage(),transition:TransitionType.rightToLeft,duration: Duration(seconds: 2)),
      ];

  static Inject get to => Inject<NavigatorModule>.of();
}
