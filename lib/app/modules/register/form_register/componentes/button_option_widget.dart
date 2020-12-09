import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ButtonOptionWidget extends StatelessWidget {

  final Color color;
  final String fontFamily;
  final Color textColor;
  final double bordSize;
  final text;
  final highLightColor;
  final elevation;
  final double radius;
  final double centerDistance;
  final double height;
  final Function function;

  const ButtonOptionWidget({Key key, this.color, this.textColor, this.text, this.elevation, this.radius, this.height, this.highLightColor, this.centerDistance, this.function, this.fontFamily, this.bordSize}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: height,
          child: RaisedButton(
            onPressed: function,
            color: color,
            elevation: elevation,
            highlightElevation: elevation,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
                side: BorderSide(color: Color(0xFF050072),width: bordSize)
            ),
            highlightColor: highLightColor,
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(fontSize: 18, color: textColor,fontFamily: fontFamily),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
