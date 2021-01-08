import 'configuration_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'configuration_page.dart';

class ConfigurationModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ConfigurationController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ConfigurationPage()),
      ];

  static Inject get to => Inject<ConfigurationModule>.of();
}
