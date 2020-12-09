import 'package:PadrinhoMED/app/modules/register/category/category_page.dart';
import 'package:PadrinhoMED/app/modules/register/register_page.dart';
import 'package:PadrinhoMED/app/modules/register/video_tutorial/video_tutorial_page.dart';

import 'register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RegisterController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CategoryPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
