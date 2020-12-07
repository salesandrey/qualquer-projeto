// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $LoginController = BindInject(
  (i) => LoginController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$loadingAtom = Atom(name: '_LoginControllerBase.loading');

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

  final _$emailAtom = Atom(name: '_LoginControllerBase.email');

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

  final _$passwordAtom = Atom(name: '_LoginControllerBase.password');

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

  final _$emailFeedbackAtom = Atom(name: '_LoginControllerBase.emailFeedback');

  @override
  String get emailFeedback {
    _$emailFeedbackAtom.reportRead();
    return super.emailFeedback;
  }

  @override
  set emailFeedback(String value) {
    _$emailFeedbackAtom.reportWrite(value, super.emailFeedback, () {
      super.emailFeedback = value;
    });
  }

  final _$emailValidatorAtom =
      Atom(name: '_LoginControllerBase.emailValidator');

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

  final _$passwordFeedbackAtom =
      Atom(name: '_LoginControllerBase.passwordFeedback');

  @override
  String get passwordFeedback {
    _$passwordFeedbackAtom.reportRead();
    return super.passwordFeedback;
  }

  @override
  set passwordFeedback(String value) {
    _$passwordFeedbackAtom.reportWrite(value, super.passwordFeedback, () {
      super.passwordFeedback = value;
    });
  }

  final _$passwordValidatorAtom =
      Atom(name: '_LoginControllerBase.passwordValidator');

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

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailFeedback(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeEmailFeedback');
    try {
      return super.changeEmailFeedback(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailValidate(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changeEmailValidate');
    try {
      return super.changeEmailValidate(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordFeedback(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changePasswordFeedback');
    try {
      return super.changePasswordFeedback(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordValidate(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.changePasswordValidate');
    try {
      return super.changePasswordValidate(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
email: ${email},
password: ${password},
emailFeedback: ${emailFeedback},
emailValidator: ${emailValidator},
passwordFeedback: ${passwordFeedback},
passwordValidator: ${passwordValidator}
    ''';
  }
}
