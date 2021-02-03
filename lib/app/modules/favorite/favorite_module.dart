import 'package:PadrinhoMED/app/app_controller.dart';

import 'favorite_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'favorite_page.dart';

class FavoriteModule extends ChildModule {

  final int currentIndex;

  FavoriteModule({this.currentIndex});

  @override
  List<Bind> get binds => [
        Bind((i) => FavoriteController(appController: i.get<AppController>())),
        Bind((i)=> AppController())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => FavoritePage(currentIndex: currentIndex,)),
      ];

  static Inject get to => Inject<FavoriteModule>.of();
}
