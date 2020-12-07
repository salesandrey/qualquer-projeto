// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_boarding_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $OnBoardingController = BindInject(
  (i) => OnBoardingController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnBoardingController on _OnBoardingControllerBase, Store {
  final _$usernameAtom = Atom(name: '_OnBoardingControllerBase.username');

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

  final _$_OnBoardingControllerBaseActionController =
      ActionController(name: '_OnBoardingControllerBase');

  @override
  void changeName(String value) {
    final _$actionInfo = _$_OnBoardingControllerBaseActionController
        .startAction(name: '_OnBoardingControllerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_OnBoardingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username}
    ''';
  }
}
