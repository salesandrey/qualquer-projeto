import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/modules/login/viewmodel/login_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/repositories/user_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = false;
  }

  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  String emailFeedback = "";

  @observable
  bool emailValidator = false;

  @observable
  String passwordFeedback = "";

  @observable
  bool passwordValidator = false;

  @action
  void changeEmail(String value){
    email = value;
  }

  @action
  void changeEmailFeedback(String value){
    emailFeedback = value;
  }

  @action
  void changeEmailValidate(bool value){
    emailValidator = value;
  }

  @action
  void changePassword(String value){
    password = value;
  }

  @action
  void changePasswordFeedback(String value){
    passwordFeedback = value;
  }

  @action
  void changePasswordValidate(bool value){
    passwordValidator = value;
  }

  Future<void> loginAccount() async{
    
    ILocalStorage storage = SharedLocalStorageService();
    
    if(!emailValidator && !passwordValidator) {
      dynamic data =  await UserRepository().get(email, password);
      if(data!=null) {
        UserModel model = UserModel.fromMap(data["results"]);
        List<dynamic> activities = model.atividades.map((element) {

          return element.atividade.toString();
        }).toList();

        var list = activities.cast<String>().toList();

        storage.put("id", model.id.toString());
        storage.put("email", email);
        storage.put("password", password);
        storage.put("name", model.nome);
        storage.put("data", model.data.toString());
        storage.put("about", model.sobre);
        storage.put("speciality", model.especialidade);
        storage.put("graduation", model.graduacao);
        storage.put("typeSearch", model.tipo);
        storage.put("city", model.cidade);
        storage.put("state", model.estado);
        storage.put("instagram", model.instagram);
        storage.put("activities",list);
        Modular.to.pushReplacementNamed("/Loading",arguments: "Login");
      }
    }
  }
}
