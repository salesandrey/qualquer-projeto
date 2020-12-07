import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final String text;

  const ButtonWidget({Key key, this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 46,
      child: RaisedButton(
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {},
        textColor: KBlueColor,
        color: KthirdColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: KBlueColor,
            width: 1,
          ),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 16,fontFamily: "Montserrat Regular"),
          ),
        ),
      ),
    );
  }
}
