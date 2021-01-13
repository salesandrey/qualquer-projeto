
import 'package:flutter/material.dart';

class SwitchConfigWidget extends StatelessWidget {

  final String title;
  final bool off;
  final Function turnON;
  final Color color;

  const SwitchConfigWidget({Key key, this.title, this.off, this.turnON, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontSize: 15,color: color,fontFamily: "Montserrat Bold"),),
          Container(
              height: 24,
              child: Switch(value: off,onChanged: turnON,activeColor: Color(0xFF6259B2),))
        ],
      ),
    );
  }
}
