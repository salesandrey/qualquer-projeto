// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_real_matches_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyRealMatchesStore on _MyRealMatchesStoreBase, Store {
  final _$matchesAtom = Atom(name: '_MyRealMatchesStoreBase.matches');

  @override
  ObservableList<int> get matches {
    _$matchesAtom.reportRead();
    return super.matches;
  }

  @override
  set matches(ObservableList<int> value) {
    _$matchesAtom.reportWrite(value, super.matches, () {
      super.matches = value;
    });
  }

  final _$getMyMatchesAsyncAction =
      AsyncAction('_MyRealMatchesStoreBase.getMyMatches');

  @override
  Future<void> getMyMatches(int userID) {
    return _$getMyMatchesAsyncAction.run(() => super.getMyMatches(userID));
  }

  final _$_MyRealMatchesStoreBaseActionController =
      ActionController(name: '_MyRealMatchesStoreBase');

  @override
  void addMyMatches(UserMatchModel model) {
    final _$actionInfo = _$_MyRealMatchesStoreBaseActionController.startAction(
        name: '_MyRealMatchesStoreBase.addMyMatches');
    try {
      return super.addMyMatches(model);
    } finally {
      _$_MyRealMatchesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeMyMatches(UserMatchModel model) {
    final _$actionInfo = _$_MyRealMatchesStoreBaseActionController.startAction(
        name: '_MyRealMatchesStoreBase.removeMyMatches');
    try {
      return super.removeMyMatches(model);
    } finally {
      _$_MyRealMatchesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
matches: ${matches}
    ''';
  }
}
