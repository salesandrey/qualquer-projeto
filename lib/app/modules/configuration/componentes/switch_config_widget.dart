import 'package:flutter/material.dart';

class SwitchConfigWidget extends StatelessWidget {

  final String title;
  final bool off;
  final Function turnON;

  const SwitchConfigWidget({Key key, this.title, this.off, this.turnON}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(fontSize: 15,color: Color(0xFF313131),fontFamily: "Montserrat Bold"),),
            Container(
                height: 24,
                child: Switch(value: off,onChanged: turnON,activeColor: Color(0xFF6259B2),))
          ],
        ),
      ),
    );
  }
}
