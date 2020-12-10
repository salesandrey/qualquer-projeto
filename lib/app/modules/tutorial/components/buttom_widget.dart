import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final String text;

  const ButtonWidget({Key key, this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 40,
      child: RaisedButton(
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {},
        textColor: Color(0xFF050072),
        color: KthirdColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: Color(0xFF050072),
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular"),
        ),
      ),
    );
  }
}
