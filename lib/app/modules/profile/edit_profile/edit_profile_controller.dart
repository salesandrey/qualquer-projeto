import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'edit_profile_controller.g.dart';

@Injectable()
class EditProfileController = _EditProfileControllerBase
    with _$EditProfileController;

abstract class _EditProfileControllerBase with Store {

  @observable
  String username;

  @observable
  String usernameFeedback;

  @observable
  bool usernameValidate = false;

  @action
  void changeUsername(String value){
    username = value;
  }

  @action
  void changeUsernameFeedback(String value){
    usernameFeedback = value;
  }

  @action
  void changeUsernameValidate(bool value){
    usernameValidate = value;
  }

  @observable
  String name;

  @observable
  String email;

  @observable
  String emailFeedBack = "";

  @observable
  bool emailValidator = false;

  @action
  void changeEmail(String value){
    email = value;
  }

  @action
  void updateEmailFeedBack(String value){
    emailFeedBack = value;
  }

  @action
  void changeEmailValidator(bool value){
    emailValidator = value;
  }

  @observable
  String instagram;

  @observable
  String about;

  @observable
  String typeSearch;

  @observable
  String locationState;

  @observable
  String locationCity;

  @observable
  String graduation;

  ObservableList activities = [].asObservable();

  @observable
  String speciality;

  @action
  void changeTypeSearch(String value){
    typeSearch = value;
  }

  @action
  void changeLocationState(String value){
    locationState = value;
  }

  @action
  void changeLocationCity(String value){
    locationCity = value;
  }

  @action
  void changeGraduation(String value){
    graduation = value;
  }

  @action
  void addActivities(String value){
    activities.add(value);
  }

  @action
  void removeActivities(String value){
    activities.remove(value);
  }

  @action
  void changeSpeciality(String value){
    speciality = value;
  }


}
