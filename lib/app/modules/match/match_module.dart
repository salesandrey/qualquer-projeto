import 'package:PadrinhoMED/app/app_controller.dart';

import 'match_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'match_page.dart';

class MatchModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i)=> MatchController(appController: i.get<AppController>())),
        Bind((i)=> AppController())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => MatchPage(
            listCard:args.data[0],
            headModel: args.data[1],
            id: args.data[2],
            typeSearch: args.data[3],
            nameAbr: args.data[4],
            premium: args.data[5],
        ))
      ];

  static Inject get to => Inject<MatchModule>.of();
}
