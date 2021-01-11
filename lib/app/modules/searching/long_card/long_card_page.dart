import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'long_card_controller.dart';

class LongCard extends StatelessWidget {

  final LongCardController controller;

  const LongCard({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Colors.green,width: 1),
          color: Colors.green
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Title",style: TextStyle(fontFamily: "Montserrat Regular",color: Colors.green,fontSize: 14)),
          SizedBox(width: 8),
          Icon(Icons.highlight_off)
        ],
      ),
    );
  }
}

