// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ProfileController = BindInject(
  (i) => ProfileController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileController on _ProfileControllerBase, Store {
  final _$premiumAtom = Atom(name: '_ProfileControllerBase.premium');

  @override
  bool get premium {
    _$premiumAtom.reportRead();
    return super.premium;
  }

  @override
  set premium(bool value) {
    _$premiumAtom.reportWrite(value, super.premium, () {
      super.premium = value;
    });
  }

  final _$nameAtom = Atom(name: '_ProfileControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$getNameAsyncAction = AsyncAction('_ProfileControllerBase.getName');

  @override
  Future<void> getName() {
    return _$getNameAsyncAction.run(() => super.getName());
  }

  @override
  String toString() {
    return '''
premium: ${premium},
name: ${name}
    ''';
  }
}
