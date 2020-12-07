import 'edit_profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'edit_profile_page.dart';

class EditProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $EditProfileController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => EditProfilePage()),
      ];

  static Inject get to => Inject<EditProfileModule>.of();
}
