// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$myFavoriteStoreAtom =
      Atom(name: '_AppControllerBase.myFavoriteStore');

  @override
  MyFavoriteStore get myFavoriteStore {
    _$myFavoriteStoreAtom.reportRead();
    return super.myFavoriteStore;
  }

  @override
  set myFavoriteStore(MyFavoriteStore value) {
    _$myFavoriteStoreAtom.reportWrite(value, super.myFavoriteStore, () {
      super.myFavoriteStore = value;
    });
  }

  final _$myMatchesStoreAtom = Atom(name: '_AppControllerBase.myMatchesStore');

  @override
  MyMatchesStore get myMatchesStore {
    _$myMatchesStoreAtom.reportRead();
    return super.myMatchesStore;
  }

  @override
  set myMatchesStore(MyMatchesStore value) {
    _$myMatchesStoreAtom.reportWrite(value, super.myMatchesStore, () {
      super.myMatchesStore = value;
    });
  }

  @override
  String toString() {
    return '''
myFavoriteStore: ${myFavoriteStore},
myMatchesStore: ${myMatchesStore}
    ''';
  }
}
