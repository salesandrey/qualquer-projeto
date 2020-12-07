import 'on_boarding_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'on_boarding_page.dart';

class OnBoardingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $OnBoardingController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => OnBoardingPage()),
      ];

  static Inject get to => Inject<OnBoardingModule>.of();
}
