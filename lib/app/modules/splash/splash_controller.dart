import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {

  ILocalStorage storage = SharedLocalStorageService();
  String email;
  String password;


  Future<void> checkUserLogging() async{
    email = await storage.get("email");
    password = await storage.get("password");

    if(email!=null && password!=null) {
      Modular.to.pushReplacementNamed("/Navigator");
    }else{
      Modular.to.pushReplacementNamed("/Login");
    }
  }
}
