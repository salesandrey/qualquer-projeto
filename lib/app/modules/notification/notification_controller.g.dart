// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NotificationController = BindInject(
  (i) => NotificationController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotificationController on _NotificationControllerBase, Store {
  final _$notificationsAtom =
      Atom(name: '_NotificationControllerBase.notifications');

  @override
  ObservableStream<List<NotificationModel>> get notifications {
    _$notificationsAtom.reportRead();
    return super.notifications;
  }

  @override
  set notifications(ObservableStream<List<NotificationModel>> value) {
    _$notificationsAtom.reportWrite(value, super.notifications, () {
      super.notifications = value;
    });
  }

  final _$idAtom = Atom(name: '_NotificationControllerBase.id');

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

  final _$takeIDAsyncAction = AsyncAction('_NotificationControllerBase.takeID');

  @override
  Future<void> takeID() {
    return _$takeIDAsyncAction.run(() => super.takeID());
  }

  final _$initStreamAsyncAction =
      AsyncAction('_NotificationControllerBase.initStream');

  @override
  Future<void> initStream() {
    return _$initStreamAsyncAction.run(() => super.initStream());
  }

  @override
  String toString() {
    return '''
notifications: ${notifications},
id: ${id}
    ''';
  }
}
