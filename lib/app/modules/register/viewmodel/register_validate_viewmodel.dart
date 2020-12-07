


import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:validators/validators.dart';

class RegisterValidateViewModel{



  bool validateSpeciality(RegisterController controller){
    if(isNull(controller.speciality))
      return false;
    return true;
  }

  bool validateGraduation(RegisterController controller){
    if(isNull(controller.graduation))
      return false;
    return true;
  }

  bool validateTypeSearch(RegisterController controller){
    if(isNull(controller.typeSearch))
      return false;
    return true;
  }

  bool validateLocation(RegisterController controller){
    if(isNull(controller.locationState) || isNull(controller.locationCity))
      return false;
    return true;
  }



  void validateUsername(RegisterController controller) {
    if (isNull(controller.username)) {
      controller.changeUsernameFeedback("Campo Obrigatório");
      controller.changeUsernameValidator(isNull(controller.username));
    } else {
      if (controller.username.length < 2) {
        controller.changeUsernameFeedback("Nome inválido");
        controller.changeUsernameValidator(true);
      } else {
        controller.changeUsernameFeedback("");
        controller.changeUsernameValidator(false);
      }
    }
  }

  void validateAccount(RegisterController controller){

    if (isNull(controller.email)) {
      controller.updateEmailFeedBack("Preencha o campo email");
      controller.changeEmailValidator(isNull(controller.email));
    } else {
      if (!isEmail(controller.email)) {
        controller.updateEmailFeedBack("Email inválido");
        controller.changeEmailValidator(true);
      } else {
        controller.updateEmailFeedBack("");
        controller.changeEmailValidator(false);
      }
    }
    //----------Validação do Campo Password-----------//
    if(isNull(controller.password)){
      controller.updatePasswordFeedBack("Preencha o campo senha");
      controller.changePasswordValidator(isNull(controller.password));
    }else{
      if(controller.password.length < 3){
        controller.updatePasswordFeedBack("Senha inválida");
        controller.changePasswordValidator(true);
      }else{
        controller.updatePasswordFeedBack("");
        controller.changePasswordValidator(false);
      }
    }
  }
}