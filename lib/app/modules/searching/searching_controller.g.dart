// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searching_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SearchingController = BindInject(
  (i) => SearchingController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchingController on _SearchingControllerBase, Store {
  final _$premiumAtom = Atom(name: '_SearchingControllerBase.premium');

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

  final _$stateAtom = Atom(name: '_SearchingControllerBase.state');

  @override
  String get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$cityAtom = Atom(name: '_SearchingControllerBase.city');

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$ufsAtom = Atom(name: '_SearchingControllerBase.ufs');

  @override
  ObservableList<UfModel> get ufs {
    _$ufsAtom.reportRead();
    return super.ufs;
  }

  @override
  set ufs(ObservableList<UfModel> value) {
    _$ufsAtom.reportWrite(value, super.ufs, () {
      super.ufs = value;
    });
  }

  final _$citiesAtom = Atom(name: '_SearchingControllerBase.cities');

  @override
  ObservableStream<List<CityModel>> get cities {
    _$citiesAtom.reportRead();
    return super.cities;
  }

  @override
  set cities(ObservableStream<List<CityModel>> value) {
    _$citiesAtom.reportWrite(value, super.cities, () {
      super.cities = value;
    });
  }

  final _$userInstagramEmailSearchingAtom =
      Atom(name: '_SearchingControllerBase.userInstagramEmailSearching');

  @override
  String get userInstagramEmailSearching {
    _$userInstagramEmailSearchingAtom.reportRead();
    return super.userInstagramEmailSearching;
  }

  @override
  set userInstagramEmailSearching(String value) {
    _$userInstagramEmailSearchingAtom
        .reportWrite(value, super.userInstagramEmailSearching, () {
      super.userInstagramEmailSearching = value;
    });
  }

  final _$usersAtom = Atom(name: '_SearchingControllerBase.users');

  @override
  ObservableList<UserModel> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<UserModel> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$listGraduationAtom =
      Atom(name: '_SearchingControllerBase.listGraduation');

  @override
  ObservableList<CheckBoxWidget> get listGraduation {
    _$listGraduationAtom.reportRead();
    return super.listGraduation;
  }

  @override
  set listGraduation(ObservableList<CheckBoxWidget> value) {
    _$listGraduationAtom.reportWrite(value, super.listGraduation, () {
      super.listGraduation = value;
    });
  }

  final _$programsAtom = Atom(name: '_SearchingControllerBase.programs');

  @override
  ObservableList<CheckBoxWidget> get programs {
    _$programsAtom.reportRead();
    return super.programs;
  }

  @override
  set programs(ObservableList<CheckBoxWidget> value) {
    _$programsAtom.reportWrite(value, super.programs, () {
      super.programs = value;
    });
  }

  final _$specialistsAtom = Atom(name: '_SearchingControllerBase.specialists');

  @override
  ObservableList<CheckBoxWidget> get specialists {
    _$specialistsAtom.reportRead();
    return super.specialists;
  }

  @override
  set specialists(ObservableList<CheckBoxWidget> value) {
    _$specialistsAtom.reportWrite(value, super.specialists, () {
      super.specialists = value;
    });
  }

  final _$getUFAsyncAction = AsyncAction('_SearchingControllerBase.getUF');

  @override
  Future<void> getUF() {
    return _$getUFAsyncAction.run(() => super.getUF());
  }

  final _$getCityAsyncAction = AsyncAction('_SearchingControllerBase.getCity');

  @override
  Future<void> getCity(UfModel model) {
    return _$getCityAsyncAction.run(() => super.getCity(model));
  }

  final _$_SearchingControllerBaseActionController =
      ActionController(name: '_SearchingControllerBase');

  @override
  void changePremium(bool value) {
    final _$actionInfo = _$_SearchingControllerBaseActionController.startAction(
        name: '_SearchingControllerBase.changePremium');
    try {
      return super.changePremium(value);
    } finally {
      _$_SearchingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeState(String value) {
    final _$actionInfo = _$_SearchingControllerBaseActionController.startAction(
        name: '_SearchingControllerBase.changeState');
    try {
      return super.changeState(value);
    } finally {
      _$_SearchingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCity(String value) {
    final _$actionInfo = _$_SearchingControllerBaseActionController.startAction(
        name: '_SearchingControllerBase.changeCity');
    try {
      return super.changeCity(value);
    } finally {
      _$_SearchingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNameInstagramSearching(String value) {
    final _$actionInfo = _$_SearchingControllerBaseActionController.startAction(
        name: '_SearchingControllerBase.changeNameInstagramSearching');
    try {
      return super.changeNameInstagramSearching(value);
    } finally {
      _$_SearchingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void filterResults() {
    final _$actionInfo = _$_SearchingControllerBaseActionController.startAction(
        name: '_SearchingControllerBase.filterResults');
    try {
      return super.filterResults();
    } finally {
      _$_SearchingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
premium: ${premium},
state: ${state},
city: ${city},
ufs: ${ufs},
cities: ${cities},
userInstagramEmailSearching: ${userInstagramEmailSearching},
users: ${users},
listGraduation: ${listGraduation},
programs: ${programs},
specialists: ${specialists}
    ''';
  }
}
