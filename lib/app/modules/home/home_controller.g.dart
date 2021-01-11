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

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$premiumAtom = Atom(name: '_HomeControllerBase.premium');

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

  final _$activateButtonAtom = Atom(name: '_HomeControllerBase.activateButton');

  @override
  bool get activateButton {
    _$activateButtonAtom.reportRead();
    return super.activateButton;
  }

  @override
  set activateButton(bool value) {
    _$activateButtonAtom.reportWrite(value, super.activateButton, () {
      super.activateButton = value;
    });
  }

  final _$ufsAtom = Atom(name: '_HomeControllerBase.ufs');

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

  final _$citiesAtom = Atom(name: '_HomeControllerBase.cities');

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

  final _$stateAtom = Atom(name: '_HomeControllerBase.state');

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

  final _$cityAtom = Atom(name: '_HomeControllerBase.city');

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

  final _$stateDialogAtom = Atom(name: '_HomeControllerBase.stateDialog');

  @override
  String get stateDialog {
    _$stateDialogAtom.reportRead();
    return super.stateDialog;
  }

  @override
  set stateDialog(String value) {
    _$stateDialogAtom.reportWrite(value, super.stateDialog, () {
      super.stateDialog = value;
    });
  }

  final _$cityDialogAtom = Atom(name: '_HomeControllerBase.cityDialog');

  @override
  String get cityDialog {
    _$cityDialogAtom.reportRead();
    return super.cityDialog;
  }

  @override
  set cityDialog(String value) {
    _$cityDialogAtom.reportWrite(value, super.cityDialog, () {
      super.cityDialog = value;
    });
  }

  final _$favoritesAtom = Atom(name: '_HomeControllerBase.favorites');

  @override
  ObservableStream<dynamic> get favorites {
    _$favoritesAtom.reportRead();
    return super.favorites;
  }

  @override
  set favorites(ObservableStream<dynamic> value) {
    _$favoritesAtom.reportWrite(value, super.favorites, () {
      super.favorites = value;
    });
  }

  final _$updateFavoriteAtom = Atom(name: '_HomeControllerBase.updateFavorite');

  @override
  bool get updateFavorite {
    _$updateFavoriteAtom.reportRead();
    return super.updateFavorite;
  }

  @override
  set updateFavorite(bool value) {
    _$updateFavoriteAtom.reportWrite(value, super.updateFavorite, () {
      super.updateFavorite = value;
    });
  }

  final _$currentFavoritesAtom =
      Atom(name: '_HomeControllerBase.currentFavorites');

  @override
  ObservableList<int> get currentFavorites {
    _$currentFavoritesAtom.reportRead();
    return super.currentFavorites;
  }

  @override
  set currentFavorites(ObservableList<int> value) {
    _$currentFavoritesAtom.reportWrite(value, super.currentFavorites, () {
      super.currentFavorites = value;
    });
  }

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

  final _$mostIndicationAtom = Atom(name: '_HomeControllerBase.mostIndication');

  @override
  List<UserMatchModel> get mostIndication {
    _$mostIndicationAtom.reportRead();
    return super.mostIndication;
  }

  @override
  set mostIndication(List<UserMatchModel> value) {
    _$mostIndicationAtom.reportWrite(value, super.mostIndication, () {
      super.mostIndication = value;
    });
  }

  final _$recentUsersAtom = Atom(name: '_HomeControllerBase.recentUsers');

  @override
  List<UserMatchModel> get recentUsers {
    _$recentUsersAtom.reportRead();
    return super.recentUsers;
  }

  @override
  set recentUsers(List<UserMatchModel> value) {
    _$recentUsersAtom.reportWrite(value, super.recentUsers, () {
      super.recentUsers = value;
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

  final _$getUFAsyncAction = AsyncAction('_HomeControllerBase.getUF');

  @override
  Future<void> getUF() {
    return _$getUFAsyncAction.run(() => super.getUF());
  }

  final _$getCityAsyncAction = AsyncAction('_HomeControllerBase.getCity');

  @override
  Future<void> getCity(UfModel model) {
    return _$getCityAsyncAction.run(() => super.getCity(model));
  }

  final _$initStreamAsyncAction = AsyncAction('_HomeControllerBase.initStream');

  @override
  Future<void> initStream() {
    return _$initStreamAsyncAction.run(() => super.initStream());
  }

  final _$resultFavoritesAsyncAction =
      AsyncAction('_HomeControllerBase.resultFavorites');

  @override
  Future<void> resultFavorites(List<dynamic> list) {
    return _$resultFavoritesAsyncAction.run(() => super.resultFavorites(list));
  }

  final _$getMostIndicationAsyncAction =
      AsyncAction('_HomeControllerBase.getMostIndication');

  @override
  Future<void> getMostIndication() {
    return _$getMostIndicationAsyncAction.run(() => super.getMostIndication());
  }

  final _$getRecentUsersAsyncAction =
      AsyncAction('_HomeControllerBase.getRecentUsers');

  @override
  Future<void> getRecentUsers() {
    return _$getRecentUsersAsyncAction.run(() => super.getRecentUsers());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeActivateButton(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeActivateButton');
    try {
      return super.changeActivateButton(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePremium(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changePremium');
    try {
      return super.changePremium(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeState(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeState');
    try {
      return super.changeState(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeStateAndCity(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeStateAndCity');
    try {
      return super.changeStateAndCity(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCity(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeCity');
    try {
      return super.changeCity(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeStateDialog(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeStateDialog');
    try {
      return super.changeStateDialog(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCityDialog(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeCityDialog');
    try {
      return super.changeCityDialog(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUpdateFavorite(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeUpdateFavorite');
    try {
      return super.changeUpdateFavorite(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

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
loading: ${loading},
premium: ${premium},
activateButton: ${activateButton},
ufs: ${ufs},
cities: ${cities},
state: ${state},
city: ${city},
stateDialog: ${stateDialog},
cityDialog: ${cityDialog},
favorites: ${favorites},
updateFavorite: ${updateFavorite},
currentFavorites: ${currentFavorites},
users: ${users},
mostIndication: ${mostIndication},
recentUsers: ${recentUsers},
currentUser: ${currentUser},
filter: ${filter},
sameSpecialty: ${sameSpecialty},
sameLocation: ${sameLocation},
listFiltered: ${listFiltered}
    ''';
  }
}
