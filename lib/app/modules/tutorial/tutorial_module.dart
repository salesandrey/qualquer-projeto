import 'tutorial_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'tutorial_page.dart';

class TutorialModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $TutorialController,
      ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => TutorialPage()),
      ];

  static Inject get to => Inject<TutorialModule>.of();
}
