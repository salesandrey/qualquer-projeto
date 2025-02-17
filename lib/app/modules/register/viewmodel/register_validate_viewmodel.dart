


import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:diacritic/diacritic.dart';
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
      if (controller.username.split(" ").length < 2) {
        controller.changeUsernameFeedback("Nome sem sobrenome");
        controller.changeUsernameValidator(true);
      }
      else if(controller.username.split(" ").first.length < 2 || !RegExp(r'^[a-z A-Z]+$').hasMatch(removeDiacritics(controller.username.split(" ").first))){
        controller.changeUsernameFeedback("Primeiro nome inválido");
        controller.changeUsernameValidator(true);
      }
      else {
        if(controller.username.split(" ").last==""){
          controller.changeUsernameFeedback("Sobrenome inválido");
          controller.changeUsernameValidator(true);
        }


        else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(removeDiacritics(controller.username))){
          controller.changeUsernameFeedback("Nome completo inválido");
          controller.changeUsernameValidator(true);
        }else {
          controller.changeUsernameFeedback("");
          controller.changeUsernameValidator(false);
        }
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
      if(controller.password.length < 6){
        controller.updatePasswordFeedBack("Mínimo de seis dígitos");
        controller.changePasswordValidator(true);
      }else{
        controller.updatePasswordFeedBack("");
        controller.changePasswordValidator(false);
      }
    }
  }
}