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
  Computed<List<UserModel>> _$recentUsersComputed;

  @override
  List<UserModel> get recentUsers => (_$recentUsersComputed ??=
          Computed<List<UserModel>>(() => super.recentUsers,
              name: '_HomeControllerBase.recentUsers'))
      .value;
  Computed<List<UserModel>> _$mostIndicationComputed;

  @override
  List<UserModel> get mostIndication => (_$mostIndicationComputed ??=
          Computed<List<UserModel>>(() => super.mostIndication,
              name: '_HomeControllerBase.mostIndication'))
      .value;
  Computed<List<UserModel>> _$sameSpecialtyComputed;

  @override
  List<UserModel> get sameSpecialty => (_$sameSpecialtyComputed ??=
          Computed<List<UserModel>>(() => super.sameSpecialty,
              name: '_HomeControllerBase.sameSpecialty'))
      .value;
  Computed<List<UserModel>> _$sameLocationComputed;

  @override
  List<UserModel> get sameLocation => (_$sameLocationComputed ??=
          Computed<List<UserModel>>(() => super.sameLocation,
              name: '_HomeControllerBase.sameLocation'))
      .value;
  Computed<List<UserModel>> _$listFilteredComputed;

  @override
  List<UserModel> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<UserModel>>(() => super.listFiltered,
              name: '_HomeControllerBase.listFiltered'))
      .value;

  final _$usersAtom = Atom(name: '_HomeControllerBase.users');

  @override
  ObservableList<dynamic> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<dynamic> value) {
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

  final _$valueAtom = Atom(name: '_HomeControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void addUser(UserModel user) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addUser');
    try {
      return super.addUser(user);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUser(UserModel user) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.removeUser');
    try {
      return super.removeUser(user);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.increment');
    try {
      return super.increment();
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
value: ${value},
recentUsers: ${recentUsers},
mostIndication: ${mostIndication},
sameSpecialty: ${sameSpecialty},
sameLocation: ${sameLocation},
listFiltered: ${listFiltered}
    ''';
  }
}
