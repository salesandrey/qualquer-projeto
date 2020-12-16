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
  final _$usersADDAtom = Atom(name: '_FavoriteControllerBase.usersADD');

  @override
  ObservableStream<dynamic> get usersADD {
    _$usersADDAtom.reportRead();
    return super.usersADD;
  }

  @override
  set usersADD(ObservableStream<dynamic> value) {
    _$usersADDAtom.reportWrite(value, super.usersADD, () {
      super.usersADD = value;
    });
  }

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

  final _$userIDAtom = Atom(name: '_FavoriteControllerBase.userID');

  @override
  int get userID {
    _$userIDAtom.reportRead();
    return super.userID;
  }

  @override
  set userID(int value) {
    _$userIDAtom.reportWrite(value, super.userID, () {
      super.userID = value;
    });
  }

  final _$getInterestAsyncAction =
      AsyncAction('_FavoriteControllerBase.getInterest');

  @override
  Future<void> getInterest() {
    return _$getInterestAsyncAction.run(() => super.getInterest());
  }

  final _$getUserIDAsyncAction =
      AsyncAction('_FavoriteControllerBase.getUserID');

  @override
  Future<void> getUserID() {
    return _$getUserIDAsyncAction.run(() => super.getUserID());
  }

  final _$_FavoriteControllerBaseActionController =
      ActionController(name: '_FavoriteControllerBase');

  @override
  void initStream() {
    final _$actionInfo = _$_FavoriteControllerBaseActionController.startAction(
        name: '_FavoriteControllerBase.initStream');
    try {
      return super.initStream();
    } finally {
      _$_FavoriteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usersADD: ${usersADD},
typeSearch: ${typeSearch},
userID: ${userID}
    ''';
  }
}
