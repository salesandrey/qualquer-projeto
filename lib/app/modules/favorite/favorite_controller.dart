import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'favorite_controller.g.dart';

@Injectable()
class FavoriteController = _FavoriteControllerBase with _$FavoriteController;

abstract class _FavoriteControllerBase with Store {


  @observable
  String typeSearch = "";

  @action
  Future<void> getInterest() async{
    ILocalStorage storage = SharedLocalStorageService();
    String type= await storage.get("typeSearch");
    if(type=="Afilhado"){
      typeSearch = "Afilhados";
    }else{
      typeSearch = "Padrinhos";
    }
  }
}
