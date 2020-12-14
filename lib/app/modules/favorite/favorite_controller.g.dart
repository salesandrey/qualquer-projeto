// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $FavoriteController = BindInject(
  (i) => FavoriteController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteController on _FavoriteControllerBase, Store {
  final _$typeSearchAtom = Atom(name: '_FavoriteControllerBase.typeSearch');

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

  final _$getInterestAsyncAction =
      AsyncAction('_FavoriteControllerBase.getInterest');

  @override
  Future<void> getInterest() {
    return _$getInterestAsyncAction.run(() => super.getInterest());
  }

  @override
  String toString() {
    return '''
typeSearch: ${typeSearch}
    ''';
  }
}
