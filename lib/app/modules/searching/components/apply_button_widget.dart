import 'package:flutter/material.dart';



class ApplyButtonWidget extends StatelessWidget {


  final String text;
  final Color textColor;
  final Color color;
  final Color highLightColor;
  final double elevation;
  final double height;
  final double radius;
  final double centerDistance;
  final Function filterResults;

  const ApplyButtonWidget({Key key,
    this.text,
    this.textColor,
    this.color,
    this.highLightColor,
    this.elevation,
    this.height,
    this.radius,
    this.centerDistance,
    this.filterResults}) : super(key: key);

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
            onPressed: filterResults,
            color: color,
            elevation: elevation,
            highlightElevation: elevation,
            highlightColor:highLightColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: true? Colors.white : textColor,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}







