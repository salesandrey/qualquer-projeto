// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyFavoriteStore on _MyFavoriteStoreBase, Store {
  final _$favoritesIndexAtom =
      Atom(name: '_MyFavoriteStoreBase.favoritesIndex');

  @override
  ObservableList<int> get favoritesIndex {
    _$favoritesIndexAtom.reportRead();
    return super.favoritesIndex;
  }

  @override
  set favoritesIndex(ObservableList<int> value) {
    _$favoritesIndexAtom.reportWrite(value, super.favoritesIndex, () {
      super.favoritesIndex = value;
    });
  }

  @override
  ObservableFuture<void> startFavorite(int userID) {
    final _$future = super.startFavorite(userID);
    return ObservableFuture<void>(_$future);
  }

  final _$addFavoriteAsyncAction =
      AsyncAction('_MyFavoriteStoreBase.addFavorite');

  @override
  Future<void> addFavorite(int value) {
    return _$addFavoriteAsyncAction.run(() => super.addFavorite(value));
  }

  final _$removeFavoriteAsyncAction =
      AsyncAction('_MyFavoriteStoreBase.removeFavorite');

  @override
  Future<void> removeFavorite(int value) {
    return _$removeFavoriteAsyncAction.run(() => super.removeFavorite(value));
  }

  @override
  String toString() {
    return '''
favoritesIndex: ${favoritesIndex}
    ''';
  }
}
