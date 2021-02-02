import 'package:flutter/material.dart';
import 'package:PadrinhoMED/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

void main() {

  InAppPurchaseConnection.enablePendingPurchases();
  return runApp(ModularApp(module: AppModule()));
}
