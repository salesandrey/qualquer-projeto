import 'complete_profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'complete_profile_page.dart';

class CompleteProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CompleteProfileController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CompleteProfilePage()),
      ];

  static Inject get to => Inject<CompleteProfileModule>.of();
}
