
import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/repositories/signature_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';

part 'profile_controller.g.dart';

@Injectable()
class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {

  @observable
  bool premium = true;

  @observable
  bool signature;

  @observable
  String type;

  @observable
  String name = "";

  @action
  Future<void> getSignatureValidator() async{
    ILocalStorage storage = SharedLocalStorageService();
    String userID = await storage.get("id");
    type = await storage.get("typeSearch");
    signature = await SignatureRepository().validateSignature(toInt(userID));
  }

  @action
  Future<void> getName() async{
    ILocalStorage storage = SharedLocalStorageService();
    name = await storage.get("name");
  }
}
