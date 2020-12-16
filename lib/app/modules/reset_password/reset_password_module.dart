
import 'package:flutter_modular/flutter_modular.dart';
import 'reset_password_page.dart';
import 'reset_password_controller.dart';

class ResetPasswordModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $ResetPasswordController
  ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ResetPasswordPage()),
      ];

  static Inject get to => Inject<ResetPasswordModule>.of();
}
