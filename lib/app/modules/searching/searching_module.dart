import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/home_filtered/home_filtered_page.dart';

import 'long_card/long_card_controller.dart';
import 'home_filtered/home_filtered_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/searching_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'searching_page.dart';

class SearchingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        $LongCardController,
        Bind((i) => HomeFilteredController(appController: i.get<AppController>())),
        $SearchingController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SearchingPage()),
        ModularRouter("/HomeFiltered",child: (_,args)=> HomeFilteredPage(graduations: args.data[5],specialities: args.data[4],programs: args.data[3],nameOrInstagram: args.data[0],idUser: args.data[6],)),
      ];

  static Inject get to => Inject<SearchingModule>.of();
}
