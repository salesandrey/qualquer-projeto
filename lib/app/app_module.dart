import 'package:PadrinhoMED/app/modules/loading/loading_module.dart';
import 'package:PadrinhoMED/app/modules/navigator/navigator_module.dart';
import 'package:PadrinhoMED/app/modules/onBoarding/on_boarding_module.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/edit_profile_module.dart';
import 'package:PadrinhoMED/app/modules/register/category/category_page.dart';
import 'package:PadrinhoMED/app/modules/register/graduation/graduation_page.dart';
import 'package:PadrinhoMED/app/modules/register/location/location_page.dart';
import 'package:PadrinhoMED/app/modules/register/programs/programs_page.dart';
import 'package:PadrinhoMED/app/modules/register/speciality/speciality_page.dart';
import 'package:PadrinhoMED/app/modules/splash/splash_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:PadrinhoMED/app/app_widget.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/match/match_module.dart';
import 'modules/register/account/account_page.dart';
import 'modules/register/check_email/check_email_page.dart';
import 'modules/register/register_module.dart';
import 'modules/register/video_tutorial/video_tutorial_page.dart';
import 'modules/tutorial/tutorial_module.dart';


class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter("/Tutorial", module: TutorialModule()),
        ModularRouter("/EditProfile", module: EditProfileModule()),
        ModularRouter("/Navigator", module: NavigatorModule()),
        ModularRouter("/Login", module: LoginModule()),
        ModularRouter("/Home", module: HomeModule()),
        ModularRouter("/Splash", module: SplashModule()),
        ModularRouter("/Loading", module: LoadingModule()),
        ModularRouter("/Register", module: RegisterModule()),
        ModularRouter("/Match", module: MatchModule()),
        ModularRouter("/OnBoarding", module: OnBoardingModule()),
        ModularRouter("/Video", child: (_, args) => VideoTutorialPage(videoPath: args.data,),),
        ModularRouter("/CheckEmail", child: (_, args) => CheckEmailPage()),
        ModularRouter("/Account", child: (_, args) => AccountPage()),
        ModularRouter("/Category", child: (_, args) => CategoryPage()),
        ModularRouter("/Location", child: (_, args) => LocationPage()),
        ModularRouter("/Graduation", child: (_, args) => GraduationPage()),
        ModularRouter("/Programs", child: (_, args) => ProgramsPage()),
        ModularRouter("/Speciality", child: (_, args) => SpecialityPage(title: args.data)),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
