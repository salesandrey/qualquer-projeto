// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_location_filter_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DialogLocationFilterController = BindInject(
  (i) => DialogLocationFilterController(
      state: i<String>(),
      city: i<String>(),
      changeState: i<Function>(),
      changeCity: i<Function>(),
      validateCityAndState: i<Function>(),
      loadFilter: i<Function>(),
      buttonActivate: i<bool>(),
      changeButtonActivate: i<Function>(),
      ufs: i<ObservableList>(),
      cities: i<ObservableStream>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DialogLocationFilterController
    on _DialogLocationFilterControllerBase, Store {
  final _$stateAtom = Atom(name: '_DialogLocationFilterControllerBase.state');

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

  final _$cityAtom = Atom(name: '_DialogLocationFilterControllerBase.city');

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

  final _$buttonActivateAtom =
      Atom(name: '_DialogLocationFilterControllerBase.buttonActivate');

  @override
  bool get buttonActivate {
    _$buttonActivateAtom.reportRead();
    return super.buttonActivate;
  }

  @override
  set buttonActivate(bool value) {
    _$buttonActivateAtom.reportWrite(value, super.buttonActivate, () {
      super.buttonActivate = value;
    });
  }

  final _$ufsAtom = Atom(name: '_DialogLocationFilterControllerBase.ufs');

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

  final _$citiesAtom = Atom(name: '_DialogLocationFilterControllerBase.cities');

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

  final _$changeStateAtom =
      Atom(name: '_DialogLocationFilterControllerBase.changeState');

  @override
  Function get changeState {
    _$changeStateAtom.reportRead();
    return super.changeState;
  }

  @override
  set changeState(Function value) {
    _$changeStateAtom.reportWrite(value, super.changeState, () {
      super.changeState = value;
    });
  }

  final _$changeCityAtom =
      Atom(name: '_DialogLocationFilterControllerBase.changeCity');

  @override
  Function get changeCity {
    _$changeCityAtom.reportRead();
    return super.changeCity;
  }

  @override
  set changeCity(Function value) {
    _$changeCityAtom.reportWrite(value, super.changeCity, () {
      super.changeCity = value;
    });
  }

  final _$changeButtonActivateAtom =
      Atom(name: '_DialogLocationFilterControllerBase.changeButtonActivate');

  @override
  Function get changeButtonActivate {
    _$changeButtonActivateAtom.reportRead();
    return super.changeButtonActivate;
  }

  @override
  set changeButtonActivate(Function value) {
    _$changeButtonActivateAtom.reportWrite(value, super.changeButtonActivate,
        () {
      super.changeButtonActivate = value;
    });
  }

  final _$validateCityAndStateAtom =
      Atom(name: '_DialogLocationFilterControllerBase.validateCityAndState');

  @override
  Function get validateCityAndState {
    _$validateCityAndStateAtom.reportRead();
    return super.validateCityAndState;
  }

  @override
  set validateCityAndState(Function value) {
    _$validateCityAndStateAtom.reportWrite(value, super.validateCityAndState,
        () {
      super.validateCityAndState = value;
    });
  }

  final _$cityValidateAtom =
      Atom(name: '_DialogLocationFilterControllerBase.cityValidate');

  @override
  String get cityValidate {
    _$cityValidateAtom.reportRead();
    return super.cityValidate;
  }

  @override
  set cityValidate(String value) {
    _$cityValidateAtom.reportWrite(value, super.cityValidate, () {
      super.cityValidate = value;
    });
  }

  final _$loadFilterAtom =
      Atom(name: '_DialogLocationFilterControllerBase.loadFilter');

  @override
  Function get loadFilter {
    _$loadFilterAtom.reportRead();
    return super.loadFilter;
  }

  @override
  set loadFilter(Function value) {
    _$loadFilterAtom.reportWrite(value, super.loadFilter, () {
      super.loadFilter = value;
    });
  }

  final _$getCityAsyncAction =
      AsyncAction('_DialogLocationFilterControllerBase.getCity');

  @override
  Future<void> getCity(UfModel model) {
    return _$getCityAsyncAction.run(() => super.getCity(model));
  }

  final _$_DialogLocationFilterControllerBaseActionController =
      ActionController(name: '_DialogLocationFilterControllerBase');

  @override
  bool checkValidate(List<CityModel> list) {
    final _$actionInfo = _$_DialogLocationFilterControllerBaseActionController
        .startAction(name: '_DialogLocationFilterControllerBase.checkValidate');
    try {
      return super.checkValidate(list);
    } finally {
      _$_DialogLocationFilterControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
city: ${city},
buttonActivate: ${buttonActivate},
ufs: ${ufs},
cities: ${cities},
changeState: ${changeState},
changeCity: ${changeCity},
changeButtonActivate: ${changeButtonActivate},
validateCityAndState: ${validateCityAndState},
cityValidate: ${cityValidate},
loadFilter: ${loadFilter}
    ''';
  }
}
