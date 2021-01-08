import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'configuration_controller.g.dart';

@Injectable()
class ConfigurationController = _ConfigurationControllerBase
    with _$ConfigurationController;

abstract class _ConfigurationControllerBase with Store {
  @observable
  bool changeConfiguration = false;

  @observable
  bool emailNotification = false;

  @action
  void changeEmailNotification(bool value){
    emailNotification = value;
    changeConfiguration = true;
  }

  @observable
  bool pushNotification = false;

  @action
  void changePushNotification(bool value){
    pushNotification = value;
    changeConfiguration = true;

    if(!pushNotification){
      somebodyFavorite = false;
      favoriteFavorite = false;
      notificationGodFather = false;
      officialGodfather = false;
      chooseGodson = false;
    }
  }

  @observable
  bool somebodyFavorite = false;

  @action
  void changeSomebodyFavorite(bool value){
    somebodyFavorite = value;
    changeConfiguration = true;
  }

  @observable
  bool favoriteFavorite = false;

  @action
  void changeFavoriteFavorite(bool value){
    favoriteFavorite = value;
    changeConfiguration = true;
  }

  @observable
  bool notificationGodFather = false;

  @action
  void changeNotificationGodFather(bool value){
    notificationGodFather = value;
    changeConfiguration = true;
  }

  @observable
  bool chooseGodson = false;

  @action
  void changeChooseGodson(bool value){
    chooseGodson = value;
    changeConfiguration = true;
  }

  @observable
  bool officialGodfather = false;

  @action
  void changeOfficialGodFather(bool value){
    officialGodfather = value;
    changeConfiguration = true;
  }


}
