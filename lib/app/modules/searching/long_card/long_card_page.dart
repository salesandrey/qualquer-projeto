import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'long_card_controller.dart';

class LongCardPage extends StatefulWidget {
  final String title;
  const LongCardPage({Key key, this.title = "LongCard"}) : super(key: key);

  @override
  _LongCardPageState createState() => _LongCardPageState();
}

class _LongCardPageState
    extends ModularState<LongCardPage, LongCardController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
