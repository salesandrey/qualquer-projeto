import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final color;
  final titleColor;
  final title;
  final highlightColor;
  final elevation;
  final Function navigation;

  const ButtonWidget({Key key, this.color, this.titleColor, this.title, this.highlightColor, this.elevation, this.navigation}) : super(key: key);

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
            highlightColor: highlightColor,
            child: FittedBox(
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: titleColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
