// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CheckboxController = BindInject(
  (i) => CheckboxController(title: i<String>(), check: i<bool>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CheckboxController on _CheckboxControllerBase, Store {
  final _$titleAtom = Atom(name: '_CheckboxControllerBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$checkAtom = Atom(name: '_CheckboxControllerBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$_CheckboxControllerBaseActionController =
      ActionController(name: '_CheckboxControllerBase');

  @override
  void changeTitle(String value) {
    final _$actionInfo = _$_CheckboxControllerBaseActionController.startAction(
        name: '_CheckboxControllerBase.changeTitle');
    try {
      return super.changeTitle(value);
    } finally {
      _$_CheckboxControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_CheckboxControllerBaseActionController.startAction(
        name: '_CheckboxControllerBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_CheckboxControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check}
    ''';
  }
}
