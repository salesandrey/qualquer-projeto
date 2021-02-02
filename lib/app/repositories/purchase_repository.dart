



import 'dart:async';

import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseRepository{

  InAppPurchaseConnection _iap = InAppPurchaseConnection.instance;

  bool available = true;

  List<ProductDetails> _products = [];

  List<PurchaseDetails> _purchases = [];

  StreamSubscription _subscription;


  Future<void> initialize() async {

    available = await _iap.isAvailable();

    if(available){
      
    }

  }





}