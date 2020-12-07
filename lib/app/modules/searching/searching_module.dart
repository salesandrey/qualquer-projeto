import 'long_card/long_card_controller.dart';
import 'home_filtered/home_filtered_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/searching_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'searching_page.dart';

class SearchingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $LongCardController,
        $HomeFilteredController,
        $SearchingController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => SearchingPage()),
      ];

  static Inject get to => Inject<SearchingModule>.of();
}
