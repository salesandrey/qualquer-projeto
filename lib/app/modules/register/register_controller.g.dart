// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterController = BindInject(
  (i) => RegisterController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<List<dynamic>> _$citiesComputedComputed;

  @override
  List<dynamic> get citiesComputed => (_$citiesComputedComputed ??=
          Computed<List<dynamic>>(() => super.citiesComputed,
              name: '_RegisterControllerBase.citiesComputed'))
      .value;

  final _$loadingAtom = Atom(name: '_RegisterControllerBase.loading');

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

  final _$usernameAtom = Atom(name: '_RegisterControllerBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$pinRecervedAtom = Atom(name: '_RegisterControllerBase.pinRecerved');

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

  final _$instagramAtom = Atom(name: '_RegisterControllerBase.instagram');

  @override
  String get instagram {
    _$instagramAtom.reportRead();
    return super.instagram;
  }

  @override
  set instagram(String value) {
    _$instagramAtom.reportWrite(value, super.instagram, () {
      super.instagram = value;
    });
  }

  final _$usernameFeedbackAtom =
      Atom(name: '_RegisterControllerBase.usernameFeedback');

  @override
  String get usernameFeedback {
    _$usernameFeedbackAtom.reportRead();
    return super.usernameFeedback;
  }

  @override
  set usernameFeedback(String value) {
    _$usernameFeedbackAtom.reportWrite(value, super.usernameFeedback, () {
      super.usernameFeedback = value;
    });
  }

  final _$usernameValidatorAtom =
      Atom(name: '_RegisterControllerBase.usernameValidator');

  @override
  bool get usernameValidator {
    _$usernameValidatorAtom.reportRead();
    return super.usernameValidator;
  }

  @override
  set usernameValidator(bool value) {
    _$usernameValidatorAtom.reportWrite(value, super.usernameValidator, () {
      super.usernameValidator = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegisterControllerBase.email');

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
      Atom(name: '_RegisterControllerBase.emailFeedBack');

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
      Atom(name: '_RegisterControllerBase.emailValidator');

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

  final _$passwordAtom = Atom(name: '_RegisterControllerBase.password');

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
      Atom(name: '_RegisterControllerBase.passwordFeedBack');

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
      Atom(name: '_RegisterControllerBase.passwordValidator');

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

  final _$pinCodeAtom = Atom(name: '_RegisterControllerBase.pinCode');

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
      Atom(name: '_RegisterControllerBase.pinCodeFeedback');

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
      Atom(name: '_RegisterControllerBase.pinCodeValidate');

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

  final _$typeSearchAtom = Atom(name: '_RegisterControllerBase.typeSearch');

  @override
  String get typeSearch {
    _$typeSearchAtom.reportRead();
    return super.typeSearch;
  }

  @override
  set typeSearch(String value) {
    _$typeSearchAtom.reportWrite(value, super.typeSearch, () {
      super.typeSearch = value;
    });
  }

  final _$locationStateAtom =
      Atom(name: '_RegisterControllerBase.locationState');

  @override
  String get locationState {
    _$locationStateAtom.reportRead();
    return super.locationState;
  }

  @override
  set locationState(String value) {
    _$locationStateAtom.reportWrite(value, super.locationState, () {
      super.locationState = value;
    });
  }

  final _$locationCityAtom = Atom(name: '_RegisterControllerBase.locationCity');

  @override
  String get locationCity {
    _$locationCityAtom.reportRead();
    return super.locationCity;
  }

  @override
  set locationCity(String value) {
    _$locationCityAtom.reportWrite(value, super.locationCity, () {
      super.locationCity = value;
    });
  }

  final _$graduationAtom = Atom(name: '_RegisterControllerBase.graduation');

  @override
  String get graduation {
    _$graduationAtom.reportRead();
    return super.graduation;
  }

  @override
  set graduation(String value) {
    _$graduationAtom.reportWrite(value, super.graduation, () {
      super.graduation = value;
    });
  }

  final _$specialityAtom = Atom(name: '_RegisterControllerBase.speciality');

  @override
  String get speciality {
    _$specialityAtom.reportRead();
    return super.speciality;
  }

  @override
  set speciality(String value) {
    _$specialityAtom.reportWrite(value, super.speciality, () {
      super.speciality = value;
    });
  }

  final _$checkTermAtom = Atom(name: '_RegisterControllerBase.checkTerm');

  @override
  bool get checkTerm {
    _$checkTermAtom.reportRead();
    return super.checkTerm;
  }

  @override
  set checkTerm(bool value) {
    _$checkTermAtom.reportWrite(value, super.checkTerm, () {
      super.checkTerm = value;
    });
  }

  final _$ufsStringAtom = Atom(name: '_RegisterControllerBase.ufsString');

  @override
  ObservableList<String> get ufsString {
    _$ufsStringAtom.reportRead();
    return super.ufsString;
  }

  @override
  set ufsString(ObservableList<String> value) {
    _$ufsStringAtom.reportWrite(value, super.ufsString, () {
      super.ufsString = value;
    });
  }

  final _$citiesStringAtom = Atom(name: '_RegisterControllerBase.citiesString');

  @override
  ObservableList<String> get citiesString {
    _$citiesStringAtom.reportRead();
    return super.citiesString;
  }

  @override
  set citiesString(ObservableList<String> value) {
    _$citiesStringAtom.reportWrite(value, super.citiesString, () {
      super.citiesString = value;
    });
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePintRecerved(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePintRecerved');
    try {
      return super.changePintRecerved(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeInstagram(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeInstagram');
    try {
      return super.changeInstagram(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUsername(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeUsername');
    try {
      return super.changeUsername(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUsernameFeedback(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeUsernameFeedback');
    try {
      return super.changeUsernameFeedback(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUsernameValidator(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeUsernameValidator');
    try {
      return super.changeUsernameValidator(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateEmailFeedBack(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.updateEmailFeedBack');
    try {
      return super.updateEmailFeedBack(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailValidator(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeEmailValidator');
    try {
      return super.changeEmailValidator(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatePasswordFeedBack(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.updatePasswordFeedBack');
    try {
      return super.updatePasswordFeedBack(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordValidator(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePasswordValidator');
    try {
      return super.changePasswordValidator(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePinCode(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePinCode');
    try {
      return super.changePinCode(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePinCodeFeedback(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePinCodeFeedback');
    try {
      return super.changePinCodeFeedback(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePinCodeValidate(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePinCodeValidate');
    try {
      return super.changePinCodeValidate(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTypeSearch(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeTypeSearch');
    try {
      return super.changeTypeSearch(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLocationState(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeLocationState');
    try {
      return super.changeLocationState(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLocationCity(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeLocationCity');
    try {
      return super.changeLocationCity(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeGraduation(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeGraduation');
    try {
      return super.changeGraduation(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addActivities(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.addActivities');
    try {
      return super.addActivities(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivities(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.removeActivities');
    try {
      return super.removeActivities(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSpeciality(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeSpeciality');
    try {
      return super.changeSpeciality(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTerm(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeTerm');
    try {
      return super.changeTerm(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void cleanListCities() {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.cleanListCities');
    try {
      return super.cleanListCities();
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void transformCityList() {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.transformCityList');
    try {
      return super.transformCityList();
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
username: ${username},
pinRecerved: ${pinRecerved},
instagram: ${instagram},
usernameFeedback: ${usernameFeedback},
usernameValidator: ${usernameValidator},
email: ${email},
emailFeedBack: ${emailFeedBack},
emailValidator: ${emailValidator},
password: ${password},
passwordFeedBack: ${passwordFeedBack},
passwordValidator: ${passwordValidator},
pinCode: ${pinCode},
pinCodeFeedback: ${pinCodeFeedback},
pinCodeValidate: ${pinCodeValidate},
typeSearch: ${typeSearch},
locationState: ${locationState},
locationCity: ${locationCity},
graduation: ${graduation},
speciality: ${speciality},
checkTerm: ${checkTerm},
ufsString: ${ufsString},
citiesString: ${citiesString},
citiesComputed: ${citiesComputed}
    ''';
  }
}
