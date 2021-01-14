import 'package:flutter/material.dart';



class ApplyButtonWidget extends StatelessWidget {


  final Color color;
  final double elevation;
  final Color highLightColor;
  final String text;
  final Color textColor;
  final Function navigation;
  final Color disableColor;
  final Color disableTextColor;

  const ApplyButtonWidget({Key key,
    this.text,
    this.textColor,
    this.color,
    this.highLightColor,
    this.elevation,
    this.navigation,
    this.disableColor,
    this.disableTextColor
  }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 56,
                child: RaisedButton(
                    disabledColor: disableColor,
                    disabledTextColor: disableTextColor,
                    onPressed: navigation,
                    color: color,
                    elevation: elevation,
                    highlightElevation: elevation,
                    shape: StadiumBorder(),
                    highlightColor: highLightColor,
                    child: FittedBox(child: Text(text, style: TextStyle(
                        fontFamily: "Montserrat Bold",
                        fontSize: 18,
                        color: textColor),
                    ))))]);
  }
}







