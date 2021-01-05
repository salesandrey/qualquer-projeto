import 'package:PadrinhoMED/app/modules/register/account/account_page.dart';
import 'package:PadrinhoMED/app/modules/register/category/category_page.dart';
import 'package:PadrinhoMED/app/modules/register/check_email/check_email_page.dart';
import 'package:PadrinhoMED/app/modules/register/location/location_page.dart';
import 'package:PadrinhoMED/app/modules/register/programs/programs_page.dart';
import 'package:PadrinhoMED/app/modules/register/register_page.dart';
import 'package:PadrinhoMED/app/modules/register/speciality/speciality_page.dart';
import 'package:PadrinhoMED/app/modules/register/terms/terms_page.dart';
import 'package:PadrinhoMED/app/modules/register/video_tutorial/video_tutorial_page.dart';
import 'package:flutter/foundation.dart';

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
