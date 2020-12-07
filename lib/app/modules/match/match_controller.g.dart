// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MatchController = BindInject(
  (i) => MatchController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MatchController on _MatchControllerBase, Store {
  final _$valueAtom = Atom(name: '_MatchControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_MatchControllerBaseActionController =
      ActionController(name: '_MatchControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_MatchControllerBaseActionController.startAction(
        name: '_MatchControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_MatchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
