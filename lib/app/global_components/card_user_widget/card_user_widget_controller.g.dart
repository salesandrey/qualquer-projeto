// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_user_widget_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CardUserWidgetController = BindInject(
  (i) => CardUserWidgetController(
      user: i<UserMatchModel>(),
      id: i<int>(),
      like: i<bool>(),
      nameAbr: i<String>(),
      appController: i<AppController>(),
      changeGlobalLike: i<Function>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardUserWidgetController on _CardUserWidgetControllerBase, Store {
  final _$appControllerAtom =
      Atom(name: '_CardUserWidgetControllerBase.appController');

  @override
  AppController get appController {
    _$appControllerAtom.reportRead();
    return super.appController;
  }

  @override
  set appController(AppController value) {
    _$appControllerAtom.reportWrite(value, super.appController, () {
      super.appController = value;
    });
  }

  final _$userAtom = Atom(name: '_CardUserWidgetControllerBase.user');

  @override
  UserMatchModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserMatchModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$idAtom = Atom(name: '_CardUserWidgetControllerBase.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$likeAtom = Atom(name: '_CardUserWidgetControllerBase.like');

  @override
  bool get like {
    _$likeAtom.reportRead();
    return super.like;
  }

  @override
  set like(bool value) {
    _$likeAtom.reportWrite(value, super.like, () {
      super.like = value;
    });
  }

  final _$typeSearchAtom =
      Atom(name: '_CardUserWidgetControllerBase.typeSearch');

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

  final _$patronizeAtom = Atom(name: '_CardUserWidgetControllerBase.patronize');

  @override
  bool get patronize {
    _$patronizeAtom.reportRead();
    return super.patronize;
  }

  @override
  set patronize(bool value) {
    _$patronizeAtom.reportWrite(value, super.patronize, () {
      super.patronize = value;
    });
  }

  final _$nameAbrAtom = Atom(name: '_CardUserWidgetControllerBase.nameAbr');

  @override
  String get nameAbr {
    _$nameAbrAtom.reportRead();
    return super.nameAbr;
  }

  @override
  set nameAbr(String value) {
    _$nameAbrAtom.reportWrite(value, super.nameAbr, () {
      super.nameAbr = value;
    });
  }

  final _$changeLikeAsyncAction =
      AsyncAction('_CardUserWidgetControllerBase.changeLike');

  @override
  Future<void> changeLike() {
    return _$changeLikeAsyncAction.run(() => super.changeLike());
  }

  @override
  String toString() {
    return '''
appController: ${appController},
user: ${user},
id: ${id},
like: ${like},
typeSearch: ${typeSearch},
patronize: ${patronize},
nameAbr: ${nameAbr}
    ''';
  }
}
