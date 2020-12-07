import 'package:flutter/material.dart';

class ButtonConfirmWidget extends StatefulWidget {

  final Color color;
  final double elevation;
  final Color highLightColor;
  final String text;
  final Color textColor;
  final Function navigation;

  const ButtonConfirmWidget({Key key, this.color, this.elevation, this.highLightColor, this.text, this.textColor, this.navigation}) : super(key: key);

  @override
  _ButtonConfirmWidgetState createState() => _ButtonConfirmWidgetState(color: color,elevation: elevation,highLightColor: highLightColor,text: text,textColor: textColor,navigation: navigation);
}

class _ButtonConfirmWidgetState extends State<ButtonConfirmWidget> {

  final Color color;
  final double elevation;
  final Color highLightColor;
  final String text;
  final Color textColor;
  final Function navigation;

  _ButtonConfirmWidgetState({this.navigation,this.color, this.elevation, this.highLightColor, this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 56,
          child: RaisedButton(
            onPressed: navigation,
            color: color,
            elevation: elevation,
            highlightElevation: elevation,
            shape: StadiumBorder(),
            highlightColor: highLightColor,
            child: FittedBox(child: Text(text, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: textColor),
              ))))]);
  }
}
