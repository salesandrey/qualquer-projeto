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
            child: (_, args) => NavigatorPage(currentPage: args.data[0],currentTabPatronize: args.data[1]),
            transition: TransitionType.fadeIn,duration: Duration(seconds: 2)),
      ];

  static Inject get to => Inject<NavigatorModule>.of();
}
