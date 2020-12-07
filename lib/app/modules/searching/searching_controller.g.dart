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
  Computed<List<UserModel>> _$userFilteredComputed;

  @override
  List<UserModel> get userFiltered => (_$userFilteredComputed ??=
          Computed<List<UserModel>>(() => super.userFiltered,
              name: '_SearchingControllerBase.userFiltered'))
      .value;

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

  final _$specialitsAtom = Atom(name: '_SearchingControllerBase.specialits');

  @override
  ObservableList<CheckBoxWidget> get specialits {
    _$specialitsAtom.reportRead();
    return super.specialits;
  }

  @override
  set specialits(ObservableList<CheckBoxWidget> value) {
    _$specialitsAtom.reportWrite(value, super.specialits, () {
      super.specialits = value;
    });
  }

  @override
  String toString() {
    return '''
users: ${users},
listGraduation: ${listGraduation},
programs: ${programs},
specialits: ${specialits},
userFiltered: ${userFiltered}
    ''';
  }
}
