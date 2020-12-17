

import 'package:PadrinhoMED/app/modules/reset_password/reset_password_controller.dart';
import 'package:validators/validators.dart';

class ValidateResetViewModel{

  void validateEmail(ResetPasswordController controller) {
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
  }

  void validatePassword(ResetPasswordController controller) {
    //----------Validação do Campo Password-----------//
    if (isNull(controller.password)) {
      controller.changePasswordFeedback("Campo Obrigatório");
      controller.changePasswordValidate(isNull(controller.password));
    } else {
      if (controller.password.length < 6) {
        controller.changePasswordFeedback("Mínimo de seis dígitos");
        controller.changePasswordValidate(true);
      } else {
        controller.changePasswordFeedback("");
        controller.changePasswordValidate(false);
      }
    }

    if (isNull(controller.passwordConfirm)) {
      controller.changeConfirmPasswordFeedback("Campo Obrigatório");
      controller.changeConfirmPasswordValidate(isNull(controller.password));
    } else {
      if (controller.password!=controller.passwordConfirm) {
        controller.changeConfirmPasswordFeedback("As senhas não são iguais");
        controller.changeConfirmPasswordValidate(true);
      } else {
        controller.changeConfirmPasswordFeedback("");
        controller.changeConfirmPasswordValidate(false);
      }
    }
  }
}