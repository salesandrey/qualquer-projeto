import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/configuration_model.dart';
import 'package:PadrinhoMED/app/repositories/configuration_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';

part 'configuration_controller.g.dart';

@Injectable()
class ConfigurationController = _ConfigurationControllerBase
    with _$ConfigurationController;

abstract class _ConfigurationControllerBase with Store {

  _ConfigurationControllerBase({this.storage});

  ILocalStorage storage;

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  bool changeConfiguration = false;

  @observable
  bool emailNotification;

  @action
  void changeEmailNotification(bool value){
    emailNotification = value;
    changeConfiguration = true;
  }

  @observable
  bool pushNotification;

  @action
  void changePushNotification(bool value){
    pushNotification = value;
    changeConfiguration = true;

    if(!pushNotification){
      somebodyFavorite = false;
      notificationGodFather = false;
      officialGodfather = false;
      chooseGodson = false;
    }
  }

  @observable
  bool somebodyFavorite;

  @action
  void changeSomebodyFavorite(bool value){
    somebodyFavorite = value;
    changeConfiguration = true;
  }


  @observable
  bool notificationGodFather;

  @action
  void changeNotificationGodFather(bool value){
    notificationGodFather = value;
    changeConfiguration = true;
  }

  @observable
  bool chooseGodson;

  @action
  void changeChooseGodson(bool value){
    chooseGodson = value;
    changeConfiguration = true;
  }

  @observable
  bool officialGodfather;

  @action
  void changeOfficialGodFather(bool value){
    officialGodfather = value;
    changeConfiguration = true;
  }

  @action
  Future<void> saveConfiguration() async {
    String id = await storage.get("id");
    ConfigurationModel config = ConfigurationModel(
      solicitadoPadrinho: notificationGodFather? 1:0,
      notificacaoEmail: emailNotification? 1:0,
      notificacaoPush: pushNotification?1:0,
      idUsuario: toInt(id),
      favoritadoAlguem: somebodyFavorite?1:0,
      escolhidoAfilhado: chooseGodson?1:0,
      apadrinhamentoOficial: officialGodfather?1:0
    );

    await ConfigurationRepository().changeConfiguration(config);
  }

  @action
  Future<void> getConfigurations() async {

    String id = await storage.get("id");
    ConfigurationModel configs = await ConfigurationRepository().getConfigurations(toInt(id));

    if(configs==null){
      emailNotification = false;
      pushNotification = false;
      somebodyFavorite = false;
      officialGodfather = false;
      chooseGodson = false;
      notificationGodFather = false;

    } else {

      emailNotification = configs.notificacaoEmail==1?true:false;
      pushNotification = configs.notificacaoPush==1?true:false;
      somebodyFavorite = configs.favoritadoAlguem==1?true:false;
      officialGodfather = configs.apadrinhamentoOficial==1?true:false;
      chooseGodson = configs.escolhidoAfilhado==1?true:false;
      notificationGodFather = configs.solicitadoPadrinho==1?true:false;
    }
  }
}
