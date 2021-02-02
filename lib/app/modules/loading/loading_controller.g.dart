// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoadingController on _LoadingControllerBase, Store {
  final _$globalControllerAtom =
      Atom(name: '_LoadingControllerBase.globalController');

  @override
  AppController get globalController {
    _$globalControllerAtom.reportRead();
    return super.globalController;
  }

  @override
  set globalController(AppController value) {
    _$globalControllerAtom.reportWrite(value, super.globalController, () {
      super.globalController = value;
    });
  }

  final _$storageAtom = Atom(name: '_LoadingControllerBase.storage');

  @override
  ILocalStorage get storage {
    _$storageAtom.reportRead();
    return super.storage;
  }

  @override
  set storage(ILocalStorage value) {
    _$storageAtom.reportWrite(value, super.storage, () {
      super.storage = value;
    });
  }

  final _$currentsMessagesAtom =
      Atom(name: '_LoadingControllerBase.currentsMessages');

  @override
  ObservableList<String> get currentsMessages {
    _$currentsMessagesAtom.reportRead();
    return super.currentsMessages;
  }

  @override
  set currentsMessages(ObservableList<String> value) {
    _$currentsMessagesAtom.reportWrite(value, super.currentsMessages, () {
      super.currentsMessages = value;
    });
  }

  final _$getMatchesAndFavoritesAsyncAction =
      AsyncAction('_LoadingControllerBase.getMatchesAndFavorites');

  @override
  Future<void> getMatchesAndFavorites() {
    return _$getMatchesAndFavoritesAsyncAction
        .run(() => super.getMatchesAndFavorites());
  }

  final _$_LoadingControllerBaseActionController =
      ActionController(name: '_LoadingControllerBase');

  @override
  void loadingMessages() {
    final _$actionInfo = _$_LoadingControllerBaseActionController.startAction(
        name: '_LoadingControllerBase.loadingMessages');
    try {
      return super.loadingMessages();
    } finally {
      _$_LoadingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
globalController: ${globalController},
storage: ${storage},
currentsMessages: ${currentsMessages}
    ''';
  }
}
