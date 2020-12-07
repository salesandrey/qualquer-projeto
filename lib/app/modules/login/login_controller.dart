import 'package:PadrinhoMED/app/modules/login/viewmodel/login_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/repositories/user_repository.dart';
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
    if(!emailValidator && !passwordValidator) {
      dynamic data =  await UserRepository().get(email, password);
      if(data!=null) {
        Modular.to.pushReplacementNamed("/Loading");
      }
    }

  }
}
