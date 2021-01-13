import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'tutorial_controller.g.dart';

@Injectable()
class TutorialController = _TutorialControllerBase with _$TutorialController;

abstract class _TutorialControllerBase with Store {
  
  
  @observable
  String godFather;
  
  @action
  Future<void> getGodFather() async{
    ILocalStorage storage = SharedLocalStorageService();
    godFather = await storage.get("typeSearch");
    
  }
}
