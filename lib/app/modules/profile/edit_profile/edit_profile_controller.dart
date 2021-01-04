import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'edit_profile_controller.g.dart';

@Injectable()
class EditProfileController = _EditProfileControllerBase
    with _$EditProfileController;

abstract class _EditProfileControllerBase with Store {

  @observable
  String name;

  @observable
  String nameFeedback;

  @observable
  bool nameValidate = false;

  @action
  void changeName(String value){
    name = value;
  }

  @action
  void changeNameFeedback(String value){
    nameFeedback = value;
  }

  @action
  void changeNameValidate(bool value){
    nameValidate = value;
  }

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
  String instagramFeedback;

  @observable
  bool instagramValidator = false;

  @action
  void changeInstagram(String value){
    instagram = value;
  }

  @action
  void changeInstagramFeedback(String value){
    instagramFeedback = value;
  }

  @action
  void changeInstagramValidator(bool value){
    instagramValidator = value;
  }

  @observable
  String about;

  @observable
  String aboutFeedback;

  @observable
  bool aboutValidator = false;

  @action
  void changeAbout(String value){
    about = value;
  }

  @action
  void changeAboutFeedback(String value){
    aboutFeedback = value;
  }

  @action
  void changeAboutValidator(bool value){
    aboutValidator = value;
  }

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
