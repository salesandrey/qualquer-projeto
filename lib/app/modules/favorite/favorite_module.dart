import 'favorite_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'favorite_page.dart';

class FavoriteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $FavoriteController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => FavoritePage()),
      ];

  static Inject get to => Inject<FavoriteModule>.of();
}
