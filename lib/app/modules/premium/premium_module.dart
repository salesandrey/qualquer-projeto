import 'package:PadrinhoMED/app/modules/premium/premium_details/premium_details_page.dart';

import 'premium_details/premium_details_controller.dart';
import 'premium_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'premium_page.dart';

class PremiumModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PremiumDetailsController,
        $PremiumController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PremiumPage()),

      ];

  static Inject get to => Inject<PremiumModule>.of();
}
