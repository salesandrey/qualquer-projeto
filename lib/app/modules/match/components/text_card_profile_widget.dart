import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class TextCardProfileWidget extends StatelessWidget {
  final String text1;
  final String text2;

  const TextCardProfileWidget({Key key, this.text1, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text1,
            style: TextStyle(
              fontSize: 0.014 * MediaQuery.of(context).size.height,
              fontFamily: "Montserrat Bold",
              color: Color(0xFF050072),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text2,
            style: TextStyle(
              fontFamily: "Montserrat Regular",
              fontSize: 0.015 * MediaQuery.of(context).size.height,
              color: KBlackLightTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
