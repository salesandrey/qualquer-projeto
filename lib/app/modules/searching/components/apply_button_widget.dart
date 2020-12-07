import 'package:flutter/material.dart';



class ApplyButtonWidget extends StatefulWidget {

  final String text;
  final Color textColor;
  final Color color;
  final Color highLightColor;
  final double elevation;
  final double height;
  final double radius;
  final double centerDistance;

  const ApplyButtonWidget({Key key,
    this.text,
    this.textColor,
    this.color,
    this.highLightColor,
    this.elevation,
    this.height,
    this.radius,
    this.centerDistance}) : super(key: key);



  @override
  _ApplyButtonWidgetState createState() => _ApplyButtonWidgetState(color: color,
      height: height,elevation: elevation,text: text,
      centerDistance: centerDistance,highLightColor: highLightColor,radius: radius,textColor: textColor);
}

class _ApplyButtonWidgetState extends State<ApplyButtonWidget> {


  final String text;
  final Color textColor;
  final Color color;
  final Color highLightColor;
  final double elevation;
  final double height;
  final double radius;
  final double centerDistance;

  bool pressed = false;

  _ApplyButtonWidgetState({
      this.text,
      this.textColor,
      this.color,
      this.highLightColor,
      this.elevation,
      this.height,
      this.radius,
      this.centerDistance});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(centerDistance),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: height,
          child: RaisedButton(
            onPressed: () {
              pressed = true;
              setState(() {});
            },
            color: color,
            elevation: elevation,
            highlightElevation: elevation,
            highlightColor:highLightColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: pressed? Colors.white : textColor,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}