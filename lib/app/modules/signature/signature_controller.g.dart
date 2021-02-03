// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SignatureController = BindInject(
  (i) => SignatureController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignatureController on _SignatureControllerBase, Store {
  final _$loadingAtom = Atom(name: '_SignatureControllerBase.loading');

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

  final _$imageSignatureAtom =
      Atom(name: '_SignatureControllerBase.imageSignature');

  @override
  File get imageSignature {
    _$imageSignatureAtom.reportRead();
    return super.imageSignature;
  }

  @override
  set imageSignature(File value) {
    _$imageSignatureAtom.reportWrite(value, super.imageSignature, () {
      super.imageSignature = value;
    });
  }

  final _$saveImageAsyncAction =
      AsyncAction('_SignatureControllerBase.saveImage');

  @override
  Future<void> saveImage(dynamic image) {
    return _$saveImageAsyncAction.run(() => super.saveImage(image));
  }

  final _$_SignatureControllerBaseActionController =
      ActionController(name: '_SignatureControllerBase');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_SignatureControllerBaseActionController.startAction(
        name: '_SignatureControllerBase.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_SignatureControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
imageSignature: ${imageSignature}
    ''';
  }
}
