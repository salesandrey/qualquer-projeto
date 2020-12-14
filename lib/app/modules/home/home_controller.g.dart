// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<UserMatchModel>> _$recentUsersComputed;

  @override
  List<UserMatchModel> get recentUsers => (_$recentUsersComputed ??=
          Computed<List<UserMatchModel>>(() => super.recentUsers,
              name: '_HomeControllerBase.recentUsers'))
      .value;
  Computed<List<UserMatchModel>> _$mostIndicationComputed;

  @override
  List<UserMatchModel> get mostIndication => (_$mostIndicationComputed ??=
          Computed<List<UserMatchModel>>(() => super.mostIndication,
              name: '_HomeControllerBase.mostIndication'))
      .value;
  Computed<List<UserMatchModel>> _$sameSpecialtyComputed;

  @override
  List<UserMatchModel> get sameSpecialty => (_$sameSpecialtyComputed ??=
          Computed<List<UserMatchModel>>(() => super.sameSpecialty,
              name: '_HomeControllerBase.sameSpecialty'))
      .value;
  Computed<List<UserMatchModel>> _$sameLocationComputed;

  @override
  List<UserMatchModel> get sameLocation => (_$sameLocationComputed ??=
          Computed<List<UserMatchModel>>(() => super.sameLocation,
              name: '_HomeControllerBase.sameLocation'))
      .value;
  Computed<List<UserMatchModel>> _$listFilteredComputed;

  @override
  List<UserMatchModel> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<UserMatchModel>>(() => super.listFiltered,
              name: '_HomeControllerBase.listFiltered'))
      .value;

  final _$usersAtom = Atom(name: '_HomeControllerBase.users');

  @override
  ObservableList<UserMatchModel> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<UserMatchModel> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$currentUserAtom = Atom(name: '_HomeControllerBase.currentUser');

  @override
  UserModel get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(UserModel value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  final _$filterAtom = Atom(name: '_HomeControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void loadingCurrentUser(UserModel model) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.loadingCurrentUser');
    try {
      return super.loadingCurrentUser(model);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilter(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeFilter');
    try {
      return super.changeFilter(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addUser(UserMatchModel user) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addUser');
    try {
      return super.addUser(user);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUser(UserMatchModel user) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.removeUser');
    try {
      return super.removeUser(user);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearUsers() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.clearUsers');
    try {
      return super.clearUsers();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
users: ${users},
currentUser: ${currentUser},
filter: ${filter},
recentUsers: ${recentUsers},
mostIndication: ${mostIndication},
sameSpecialty: ${sameSpecialty},
sameLocation: ${sameLocation},
listFiltered: ${listFiltered}
    ''';
  }
}
