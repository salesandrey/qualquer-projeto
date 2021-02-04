import 'package:PadrinhoMED/app/modules/configuration/configuration_module.dart';
import 'package:PadrinhoMED/app/modules/godfather/godfather_module.dart';
import 'package:PadrinhoMED/app/modules/loading/loading_module.dart';
import 'package:PadrinhoMED/app/modules/my_favorites/my_favorite_store.dart';
import 'package:PadrinhoMED/app/modules/my_matches/my_matches_store.dart';
import 'package:PadrinhoMED/app/modules/navigator/navigator_module.dart';
import 'package:PadrinhoMED/app/modules/onBoarding/on_boarding_module.dart';
import 'package:PadrinhoMED/app/modules/premium/premium_module.dart';
import 'package:PadrinhoMED/app/modules/profile/components/monkey_certification_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/edit_profile_module.dart';
import 'package:PadrinhoMED/app/modules/profile_notification/profile_notification_module.dart';
import 'package:PadrinhoMED/app/modules/register/category/category_page.dart';
import 'package:PadrinhoMED/app/modules/register/graduation/graduation_page.dart';
import 'package:PadrinhoMED/app/modules/register/location/location_page.dart';
import 'package:PadrinhoMED/app/modules/register/programs/programs_page.dart';
import 'package:PadrinhoMED/app/modules/register/register_page.dart';
import 'package:PadrinhoMED/app/modules/register/speciality/speciality_page.dart';
import 'package:PadrinhoMED/app/modules/register/terms/terms_page.dart';
import 'package:PadrinhoMED/app/modules/reset_password/components/check_email_reset_page.dart';
import 'package:PadrinhoMED/app/modules/reset_password/components/confirm_email_page.dart';
import 'package:PadrinhoMED/app/modules/reset_password/reset_password_module.dart';
import 'package:PadrinhoMED/app/modules/searching/home_filtered/home_filtered_page.dart';
import 'package:PadrinhoMED/app/modules/signature/signature_module.dart';
import 'package:PadrinhoMED/app/modules/splash/splash_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:PadrinhoMED/app/app_widget.dart';

import 'global_components/complete_profile/complete_profile_controller.dart';
import 'global_components/complete_profile/complete_profile_page.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/match/match_module.dart';
import 'modules/my_real_matches/my_real_matches_store.dart';
import 'modules/premium/premium_details/premium_details_page.dart';
import 'modules/register/account/account_page.dart';
import 'modules/register/check_email/check_email_page.dart';
import 'modules/register/register_module.dart';
import 'modules/register/video_tutorial/video_tutorial_page.dart';
import 'modules/tutorial/tutorial_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyFavoriteStore()),
        Bind((i) => MyMatchesStore()),
        Bind((i)=> MyRealMatchesStore()),
        Bind((i)=> AppController(
            myFavoriteStore: i.get<MyFavoriteStore>(),
            myMatchesStore: i.get<MyMatchesStore>(),
            myRealMatchesStore: i.get<MyRealMatchesStore>()
        )),
      ];

  @override
  List<ModularRouter> get routers => [

        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter("/Monkey",child:(_,args) => MonkeyCertificationWidget()),
        ModularRouter("/Signature",module: SignatureModule()),
        ModularRouter("/ProfileNotification",module: ProfileNotificationModule()),
        ModularRouter("/GodFather", module: GodfatherModule()),
        ModularRouter("/Configuration", module: ConfigurationModule()),
        ModularRouter("/PremiumDetails",
            child: (_, args) => PremiumDetailsPage(
                  typePlane: args.data[0],
                  valuePlane: args.data[1],
                )),
        ModularRouter("/Premium", module: PremiumModule()),
        ModularRouter("/Tutorial", module: TutorialModule()),
        ModularRouter("/CompleteProfile",
            child: (_, args) => CompleteProfilePage(
                controller: CompleteProfileController(
                    user: args.data[0],
                    id: args.data[1],
                    like: args.data[2],
                    typeSearch: args.data[3],
                    nameAbr: args.data[4],
                    appController: args.data[5],
                    patronize: args.data[6],
                    officialPatronize: args.data[7]
                ))),
        ModularRouter("/EditProfile", module: EditProfileModule()),
        ModularRouter("/Navigator", module: NavigatorModule()),
        ModularRouter("/Login", module: LoginModule()),
        ModularRouter("/Home", module: HomeModule()),
        ModularRouter("/Splash", module: SplashModule()),
        ModularRouter("/Loading", module: LoadingModule()),
        ModularRouter("/Register", module: RegisterModule()),
        ModularRouter("/Match", module: MatchModule()),
        ModularRouter("/ResetPassword", module: ResetPasswordModule()),
        ModularRouter("/CheckEmailReset",
            child: (_, args) => CheckEmailResetPage()),
        ModularRouter("/ConfirmEmailPage",
            child: (_, args) => ConfirmEmailPage()),
        ModularRouter("/OnBoarding", module: OnBoardingModule()),
        ModularRouter(
          "/Video",
          child: (_, args) => VideoTutorialPage(
            videoPath: args.data,
          ),
        ),
        ModularRouter("/RegisterPage", child: (_, args) => RegisterPage()),
        ModularRouter("/CheckEmail", child: (_, args) => CheckEmailPage()),
        ModularRouter("/Account", child: (_, args) => AccountPage()),
        ModularRouter("/Category", child: (_, args) => CategoryPage()),
        ModularRouter("/Location", child: (_, args) => LocationPage()),
        ModularRouter("/Graduation", child: (_, args) => GraduationPage()),
        ModularRouter("/Programs", child: (_, args) => ProgramsPage()),
        ModularRouter("/Terms", child: (_, args) => TermsPage()),
        ModularRouter("/Speciality",
            child: (_, args) => SpecialityPage(
                  title: args.data[0],
                  message: args.data[1],
                )),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
