import 'package:PadrinhoMED/app/modules/register/account/account_page.dart';
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
            child: (_, args) => AccountPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
