// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'long_card_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $LongCardController = BindInject(
  (i) => LongCardController(title: i<String>(), removeElement: i<Function>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LongCardController on _LongCardControllerBase, Store {
  final _$titleAtom = Atom(name: '_LongCardControllerBase.title');

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

  final _$removeElementAtom =
      Atom(name: '_LongCardControllerBase.removeElement');

  @override
  Function get removeElement {
    _$removeElementAtom.reportRead();
    return super.removeElement;
  }

  @override
  set removeElement(Function value) {
    _$removeElementAtom.reportWrite(value, super.removeElement, () {
      super.removeElement = value;
    });
  }

  @override
  String toString() {
    return '''
title: ${title},
removeElement: ${removeElement}
    ''';
  }
}
