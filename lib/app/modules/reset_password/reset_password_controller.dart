import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/repositories/email_validator_repository.dart';
import 'package:PadrinhoMED/app/repositories/reset_password_repository.dart';
import 'package:PadrinhoMED/app/repositories/user_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'reset_password_controller.g.dart';

@Injectable()
class ResetPasswordController = _ResetPasswordControllerBase
    with _$ResetPasswordController;

abstract class _ResetPasswordControllerBase with Store {


  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  String email="";

  @observable
  String emailFeedBack = "";

  @observable
  bool emailValidator = false;

  @observable
  String password="";

  @observable
  String passwordFeedBack="";

  @observable
  bool passwordValidator = false;

  @observable
  String passwordConfirm="";

  @observable
  String passwordConfirmFeedBack="";

  @observable
  bool passwordConfirmValidator = false;

  @action
  void changePasswordConfirm(String value){
    passwordConfirm = value;
  }

  @action
  void changeConfirmPasswordFeedback(String value){
    passwordConfirmFeedBack = value;
  }

  @action
  void changeConfirmPasswordValidate(bool value){
    passwordConfirmValidator = value;
  }

  @action
  void changeEmail(String value){
    email = value;
  }

  @action
  void changeEmailFeedback(String value){
    emailFeedBack = value;
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
    passwordFeedBack = value;
  }

  @action
  void changePasswordValidate(bool value){
    passwordValidator = value;
  }

  @observable
  String pinCode = "";

  @observable
  String pinCodeFeedback = "";

  @observable
  bool pinCodeValidate = false;

  @action
  void changePinCode(String value){
    pinCode = value;
  }

  @action
  void changePinCodeFeedback(String value){
    pinCodeFeedback = value;
  }

  @action
  void changePinCodeValidate(bool value){
    pinCodeValidate = value;
  }

  @observable
  String pinRecerved;

  @action
  void changePintRecerved(String value){
    pinRecerved = value;
  }

  Future<void> sendEmailCode() async{

    dynamic data = await EmailValidatorRepository().sendEmailCode(email);
    changePintRecerved(data["results"]["token"]);
  }

  Future<void> sendCodeValidation() async{
    dynamic data = await EmailValidatorRepository().sendCodeVerification(email, pinCode);
    if(data!=null && data["results"]=="Sucesso"){
      changePinCodeValidate(true);
      changePinCodeFeedback("Código Válido");
      Modular.to.pushReplacementNamed("/ConfirmEmailPage");
    }else
    {
      changePinCodeValidate(true);
      changePinCodeFeedback("Código Inválido");
    }
  }

  Future<void> resetPassword() async{
    SharedLocalStorageService storage = SharedLocalStorageService();
    dynamic data = ResetPasswordRepository().reset(email, password);
    if(data!=null){
      dynamic recoverData =  await UserRepository().get(email, password);
      if(recoverData!=null) {
        UserModel model = UserModel.fromMap(recoverData["results"]);
        List<dynamic> activities = model.atividades.map((element) {
          return element.atividade.toString();
        }).toList();
        var list = activities.cast<String>().toList();
        await storage.saveDataLocal(model, email, password, list);
        Modular.to.pushReplacementNamed("/Loading");
      }
    }
  }
}
