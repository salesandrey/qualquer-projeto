// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TutorialController = BindInject(
  (i) => TutorialController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TutorialController on _TutorialControllerBase, Store {
  final _$godFatherAtom = Atom(name: '_TutorialControllerBase.godFather');

  @override
  String get godFather {
    _$godFatherAtom.reportRead();
    return super.godFather;
  }

  @override
  set godFather(String value) {
    _$godFatherAtom.reportWrite(value, super.godFather, () {
      super.godFather = value;
    });
  }

  final _$getGodFatherAsyncAction =
      AsyncAction('_TutorialControllerBase.getGodFather');

  @override
  Future<void> getGodFather() {
    return _$getGodFatherAsyncAction.run(() => super.getGodFather());
  }

  @override
  String toString() {
    return '''
godFather: ${godFather}
    ''';
  }
}
