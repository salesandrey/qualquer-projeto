// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NavigatorController = BindInject(
  (i) => NavigatorController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigatorController on _NavigatorControllerBase, Store {
  final _$pageControllerAtom =
      Atom(name: '_NavigatorControllerBase.pageController');

  @override
  PageController get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.reportWrite(value, super.pageController, () {
      super.pageController = value;
    });
  }

  final _$_NavigatorControllerBaseActionController =
      ActionController(name: '_NavigatorControllerBase');

  @override
  void changePageController(int page) {
    final _$actionInfo = _$_NavigatorControllerBaseActionController.startAction(
        name: '_NavigatorControllerBase.changePageController');
    try {
      return super.changePageController(page);
    } finally {
      _$_NavigatorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePage(int index) {
    final _$actionInfo = _$_NavigatorControllerBaseActionController.startAction(
        name: '_NavigatorControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_NavigatorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageController: ${pageController}
    ''';
  }
}
