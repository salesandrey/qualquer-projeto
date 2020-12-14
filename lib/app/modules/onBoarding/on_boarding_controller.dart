import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'on_boarding_controller.g.dart';

@Injectable()
class OnBoardingController = _OnBoardingControllerBase
    with _$OnBoardingController;

abstract class _OnBoardingControllerBase with Store {

  @observable
  String username = "";


  @action
  Future<void> getName() async{
    ILocalStorage storage = SharedLocalStorageService();
    username = await storage.get("name");
  }
}
