// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MatchController = BindInject(
  (i) => MatchController(appController: i<AppController>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MatchController on _MatchControllerBase, Store {
  final _$appControllerAtom = Atom(name: '_MatchControllerBase.appController');

  @override
  AppController get appController {
    _$appControllerAtom.reportRead();
    return super.appController;
  }

  @override
  set appController(AppController value) {
    _$appControllerAtom.reportWrite(value, super.appController, () {
      super.appController = value;
    });
  }

  @override
  String toString() {
    return '''
appController: ${appController}
    ''';
  }
}
