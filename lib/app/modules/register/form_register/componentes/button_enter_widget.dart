import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ButtonEnterWidget extends StatelessWidget {

  final Color color;
  final String fontFamily;
  final Color textColor;
  final text;
  final highLightColor;
  final elevation;
  final double radius;
  final double centerDistance;
  final double height;
  final Function function;

  const ButtonEnterWidget({Key key, this.color, this.fontFamily, this.textColor, this.text, this.highLightColor, this.elevation, this.radius, this.centerDistance, this.height, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(centerDistance),
            border: Border.all(
              style: BorderStyle.solid,
              color: KBlueColor,
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: height,
          child: RaisedButton(
            onPressed: function,
            color: color,
            elevation: elevation,
            highlightElevation: elevation,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
            ),
            highlightColor: highLightColor,
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: textColor,fontFamily: fontFamily),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
