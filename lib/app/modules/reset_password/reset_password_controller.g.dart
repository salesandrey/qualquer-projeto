// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ResetPasswordController = BindInject(
  (i) => ResetPasswordController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ResetPasswordController on _ResetPasswordControllerBase, Store {
  final _$loadingAtom = Atom(name: '_ResetPasswordControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$emailAtom = Atom(name: '_ResetPasswordControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$emailFeedBackAtom =
      Atom(name: '_ResetPasswordControllerBase.emailFeedBack');

  @override
  String get emailFeedBack {
    _$emailFeedBackAtom.reportRead();
    return super.emailFeedBack;
  }

  @override
  set emailFeedBack(String value) {
    _$emailFeedBackAtom.reportWrite(value, super.emailFeedBack, () {
      super.emailFeedBack = value;
    });
  }

  final _$emailValidatorAtom =
      Atom(name: '_ResetPasswordControllerBase.emailValidator');

  @override
  bool get emailValidator {
    _$emailValidatorAtom.reportRead();
    return super.emailValidator;
  }

  @override
  set emailValidator(bool value) {
    _$emailValidatorAtom.reportWrite(value, super.emailValidator, () {
      super.emailValidator = value;
    });
  }

  final _$passwordAtom = Atom(name: '_ResetPasswordControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordFeedBackAtom =
      Atom(name: '_ResetPasswordControllerBase.passwordFeedBack');

  @override
  String get passwordFeedBack {
    _$passwordFeedBackAtom.reportRead();
    return super.passwordFeedBack;
  }

  @override
  set passwordFeedBack(String value) {
    _$passwordFeedBackAtom.reportWrite(value, super.passwordFeedBack, () {
      super.passwordFeedBack = value;
    });
  }

  final _$passwordValidatorAtom =
      Atom(name: '_ResetPasswordControllerBase.passwordValidator');

  @override
  bool get passwordValidator {
    _$passwordValidatorAtom.reportRead();
    return super.passwordValidator;
  }

  @override
  set passwordValidator(bool value) {
    _$passwordValidatorAtom.reportWrite(value, super.passwordValidator, () {
      super.passwordValidator = value;
    });
  }

  final _$passwordConfirmAtom =
      Atom(name: '_ResetPasswordControllerBase.passwordConfirm');

  @override
  String get passwordConfirm {
    _$passwordConfirmAtom.reportRead();
    return super.passwordConfirm;
  }

  @override
  set passwordConfirm(String value) {
    _$passwordConfirmAtom.reportWrite(value, super.passwordConfirm, () {
      super.passwordConfirm = value;
    });
  }

  final _$passwordConfirmFeedBackAtom =
      Atom(name: '_ResetPasswordControllerBase.passwordConfirmFeedBack');

  @override
  String get passwordConfirmFeedBack {
    _$passwordConfirmFeedBackAtom.reportRead();
    return super.passwordConfirmFeedBack;
  }

  @override
  set passwordConfirmFeedBack(String value) {
    _$passwordConfirmFeedBackAtom
        .reportWrite(value, super.passwordConfirmFeedBack, () {
      super.passwordConfirmFeedBack = value;
    });
  }

  final _$passwordConfirmValidatorAtom =
      Atom(name: '_ResetPasswordControllerBase.passwordConfirmValidator');

  @override
  bool get passwordConfirmValidator {
    _$passwordConfirmValidatorAtom.reportRead();
    return super.passwordConfirmValidator;
  }

  @override
  set passwordConfirmValidator(bool value) {
    _$passwordConfirmValidatorAtom
        .reportWrite(value, super.passwordConfirmValidator, () {
      super.passwordConfirmValidator = value;
    });
  }

  final _$pinCodeAtom = Atom(name: '_ResetPasswordControllerBase.pinCode');

  @override
  String get pinCode {
    _$pinCodeAtom.reportRead();
    return super.pinCode;
  }

  @override
  set pinCode(String value) {
    _$pinCodeAtom.reportWrite(value, super.pinCode, () {
      super.pinCode = value;
    });
  }

  final _$pinCodeFeedbackAtom =
      Atom(name: '_ResetPasswordControllerBase.pinCodeFeedback');

  @override
  String get pinCodeFeedback {
    _$pinCodeFeedbackAtom.reportRead();
    return super.pinCodeFeedback;
  }

  @override
  set pinCodeFeedback(String value) {
    _$pinCodeFeedbackAtom.reportWrite(value, super.pinCodeFeedback, () {
      super.pinCodeFeedback = value;
    });
  }

  final _$pinCodeValidateAtom =
      Atom(name: '_ResetPasswordControllerBase.pinCodeValidate');

  @override
  bool get pinCodeValidate {
    _$pinCodeValidateAtom.reportRead();
    return super.pinCodeValidate;
  }

  @override
  set pinCodeValidate(bool value) {
    _$pinCodeValidateAtom.reportWrite(value, super.pinCodeValidate, () {
      super.pinCodeValidate = value;
    });
  }

  final _$pinRecervedAtom =
      Atom(name: '_ResetPasswordControllerBase.pinRecerved');

  @override
  String get pinRecerved {
    _$pinRecervedAtom.reportRead();
    return super.pinRecerved;
  }

  @override
  set pinRecerved(String value) {
    _$pinRecervedAtom.reportWrite(value, super.pinRecerved, () {
      super.pinRecerved = value;
    });
  }

  final _$_ResetPasswordControllerBaseActionController =
      ActionController(name: '_ResetPasswordControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordConfirm(String value) {
    final _$actionInfo =
        _$_ResetPasswordControllerBaseActionController.startAction(
            name: '_ResetPasswordControllerBase.changePasswordConfirm');
    try {
      return super.changePasswordConfirm(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeConfirmPasswordFeedback(String value) {
    final _$actionInfo =
        _$_ResetPasswordControllerBaseActionController.startAction(
            name: '_ResetPasswordControllerBase.changeConfirmPasswordFeedback');
    try {
      return super.changeConfirmPasswordFeedback(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeConfirmPasswordValidate(bool value) {
    final _$actionInfo =
        _$_ResetPasswordControllerBaseActionController.startAction(
            name: '_ResetPasswordControllerBase.changeConfirmPasswordValidate');
    try {
      return super.changeConfirmPasswordValidate(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailFeedback(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeEmailFeedback');
    try {
      return super.changeEmailFeedback(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailValidate(bool value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changeEmailValidate');
    try {
      return super.changeEmailValidate(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordFeedback(String value) {
    final _$actionInfo =
        _$_ResetPasswordControllerBaseActionController.startAction(
            name: '_ResetPasswordControllerBase.changePasswordFeedback');
    try {
      return super.changePasswordFeedback(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordValidate(bool value) {
    final _$actionInfo =
        _$_ResetPasswordControllerBaseActionController.startAction(
            name: '_ResetPasswordControllerBase.changePasswordValidate');
    try {
      return super.changePasswordValidate(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePinCode(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changePinCode');
    try {
      return super.changePinCode(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePinCodeFeedback(String value) {
    final _$actionInfo =
        _$_ResetPasswordControllerBaseActionController.startAction(
            name: '_ResetPasswordControllerBase.changePinCodeFeedback');
    try {
      return super.changePinCodeFeedback(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePinCodeValidate(bool value) {
    final _$actionInfo =
        _$_ResetPasswordControllerBaseActionController.startAction(
            name: '_ResetPasswordControllerBase.changePinCodeValidate');
    try {
      return super.changePinCodeValidate(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePintRecerved(String value) {
    final _$actionInfo = _$_ResetPasswordControllerBaseActionController
        .startAction(name: '_ResetPasswordControllerBase.changePintRecerved');
    try {
      return super.changePintRecerved(value);
    } finally {
      _$_ResetPasswordControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
email: ${email},
emailFeedBack: ${emailFeedBack},
emailValidator: ${emailValidator},
password: ${password},
passwordFeedBack: ${passwordFeedBack},
passwordValidator: ${passwordValidator},
passwordConfirm: ${passwordConfirm},
passwordConfirmFeedBack: ${passwordConfirmFeedBack},
passwordConfirmValidator: ${passwordConfirmValidator},
pinCode: ${pinCode},
pinCodeFeedback: ${pinCodeFeedback},
pinCodeValidate: ${pinCodeValidate},
pinRecerved: ${pinRecerved}
    ''';
  }
}
