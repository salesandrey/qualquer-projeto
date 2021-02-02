import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';

import 'edit_profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'edit_profile_page.dart';

class EditProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i)=>SharedLocalStorageService()),
        Bind((i)=> EditProfileController(storage: i.get<SharedLocalStorageService>()))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => EditProfilePage()),
      ];

  static Inject get to => Inject<EditProfileModule>.of();
}
