

import 'package:PadrinhoMED/app/modules/login/login_controller.dart';
import 'package:validators/validators.dart';

class LoginValidateViewModel{


  void loginValidate(LoginController controller){

    //----------Validação do Campo Email-----------//
    if (isNull(controller.email)) {
      controller.changeEmailFeedback("Preencha o campo email");
      controller.changeEmailValidate(isNull(controller.email));
    } else {
      if (!isEmail(controller.email)) {
        controller.changeEmailFeedback("Email inválido");
        controller.changeEmailValidate(true);
      } else {
        controller.changeEmailFeedback("");
        controller.changeEmailValidate(false);
      }
    }
    //----------Validação do Campo Password-----------//
    if(isNull(controller.password)){
      controller.changePasswordFeedback("Preencha o campo senha");
      controller.changePasswordValidate(isNull(controller.password));
    }else{
      if(controller.password.length < 3){
        controller.changePasswordFeedback("Senha inválida");
        controller.changePasswordValidate(true);
      }else{
        controller.changePasswordFeedback("");
        controller.changePasswordValidate(false);
      }
    }
  }
}