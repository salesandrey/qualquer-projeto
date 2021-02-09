// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ConfigurationController = BindInject(
  (i) => ConfigurationController(storage: i<ILocalStorage>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigurationController on _ConfigurationControllerBase, Store {
  final _$loadingAtom = Atom(name: '_ConfigurationControllerBase.loading');

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

  final _$changeConfigurationAtom =
      Atom(name: '_ConfigurationControllerBase.changeConfiguration');

  @override
  bool get changeConfiguration {
    _$changeConfigurationAtom.reportRead();
    return super.changeConfiguration;
  }

  @override
  set changeConfiguration(bool value) {
    _$changeConfigurationAtom.reportWrite(value, super.changeConfiguration, () {
      super.changeConfiguration = value;
    });
  }

  final _$emailNotificationAtom =
      Atom(name: '_ConfigurationControllerBase.emailNotification');

  @override
  bool get emailNotification {
    _$emailNotificationAtom.reportRead();
    return super.emailNotification;
  }

  @override
  set emailNotification(bool value) {
    _$emailNotificationAtom.reportWrite(value, super.emailNotification, () {
      super.emailNotification = value;
    });
  }

  final _$pushNotificationAtom =
      Atom(name: '_ConfigurationControllerBase.pushNotification');

  @override
  bool get pushNotification {
    _$pushNotificationAtom.reportRead();
    return super.pushNotification;
  }

  @override
  set pushNotification(bool value) {
    _$pushNotificationAtom.reportWrite(value, super.pushNotification, () {
      super.pushNotification = value;
    });
  }

  final _$somebodyFavoriteAtom =
      Atom(name: '_ConfigurationControllerBase.somebodyFavorite');

  @override
  bool get somebodyFavorite {
    _$somebodyFavoriteAtom.reportRead();
    return super.somebodyFavorite;
  }

  @override
  set somebodyFavorite(bool value) {
    _$somebodyFavoriteAtom.reportWrite(value, super.somebodyFavorite, () {
      super.somebodyFavorite = value;
    });
  }

  final _$notificationGodFatherAtom =
      Atom(name: '_ConfigurationControllerBase.notificationGodFather');

  @override
  bool get notificationGodFather {
    _$notificationGodFatherAtom.reportRead();
    return super.notificationGodFather;
  }

  @override
  set notificationGodFather(bool value) {
    _$notificationGodFatherAtom.reportWrite(value, super.notificationGodFather,
        () {
      super.notificationGodFather = value;
    });
  }

  final _$chooseGodsonAtom =
      Atom(name: '_ConfigurationControllerBase.chooseGodson');

  @override
  bool get chooseGodson {
    _$chooseGodsonAtom.reportRead();
    return super.chooseGodson;
  }

  @override
  set chooseGodson(bool value) {
    _$chooseGodsonAtom.reportWrite(value, super.chooseGodson, () {
      super.chooseGodson = value;
    });
  }

  final _$officialGodfatherAtom =
      Atom(name: '_ConfigurationControllerBase.officialGodfather');

  @override
  bool get officialGodfather {
    _$officialGodfatherAtom.reportRead();
    return super.officialGodfather;
  }

  @override
  set officialGodfather(bool value) {
    _$officialGodfatherAtom.reportWrite(value, super.officialGodfather, () {
      super.officialGodfather = value;
    });
  }

  final _$saveConfigurationAsyncAction =
      AsyncAction('_ConfigurationControllerBase.saveConfiguration');

  @override
  Future<void> saveConfiguration() {
    return _$saveConfigurationAsyncAction.run(() => super.saveConfiguration());
  }

  final _$getConfigurationsAsyncAction =
      AsyncAction('_ConfigurationControllerBase.getConfigurations');

  @override
  Future<void> getConfigurations() {
    return _$getConfigurationsAsyncAction.run(() => super.getConfigurations());
  }

  final _$_ConfigurationControllerBaseActionController =
      ActionController(name: '_ConfigurationControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_ConfigurationControllerBaseActionController
        .startAction(name: '_ConfigurationControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_ConfigurationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmailNotification(bool value) {
    final _$actionInfo =
        _$_ConfigurationControllerBaseActionController.startAction(
            name: '_ConfigurationControllerBase.changeEmailNotification');
    try {
      return super.changeEmailNotification(value);
    } finally {
      _$_ConfigurationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePushNotification(bool value) {
    final _$actionInfo =
        _$_ConfigurationControllerBaseActionController.startAction(
            name: '_ConfigurationControllerBase.changePushNotification');
    try {
      return super.changePushNotification(value);
    } finally {
      _$_ConfigurationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSomebodyFavorite(bool value) {
    final _$actionInfo =
        _$_ConfigurationControllerBaseActionController.startAction(
            name: '_ConfigurationControllerBase.changeSomebodyFavorite');
    try {
      return super.changeSomebodyFavorite(value);
    } finally {
      _$_ConfigurationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNotificationGodFather(bool value) {
    final _$actionInfo =
        _$_ConfigurationControllerBaseActionController.startAction(
            name: '_ConfigurationControllerBase.changeNotificationGodFather');
    try {
      return super.changeNotificationGodFather(value);
    } finally {
      _$_ConfigurationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeChooseGodson(bool value) {
    final _$actionInfo = _$_ConfigurationControllerBaseActionController
        .startAction(name: '_ConfigurationControllerBase.changeChooseGodson');
    try {
      return super.changeChooseGodson(value);
    } finally {
      _$_ConfigurationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOfficialGodFather(bool value) {
    final _$actionInfo =
        _$_ConfigurationControllerBaseActionController.startAction(
            name: '_ConfigurationControllerBase.changeOfficialGodFather');
    try {
      return super.changeOfficialGodFather(value);
    } finally {
      _$_ConfigurationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
changeConfiguration: ${changeConfiguration},
emailNotification: ${emailNotification},
pushNotification: ${pushNotification},
somebodyFavorite: ${somebodyFavorite},
notificationGodFather: ${notificationGodFather},
chooseGodson: ${chooseGodson},
officialGodfather: ${officialGodfather}
    ''';
  }
}
