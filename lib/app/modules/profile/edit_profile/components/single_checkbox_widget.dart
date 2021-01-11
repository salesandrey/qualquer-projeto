import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SingleCheckboxWidget extends StatelessWidget {

  final Color color;
  final int index;
  final int currentIndex;
  final String title;
  final Function setCheck;

  const SingleCheckboxWidget({Key key, this.color, this.title, this.setCheck, this.index, this.currentIndex}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: kGrey,width:index==currentIndex?2:1),
                borderRadius:BorderRadius.circular(2),
              ),
              child: Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Transform.scale(
                  scale: index==currentIndex? 0.7 : 1,
                  child: Checkbox(
                      checkColor: color,
                      activeColor: color,
                      value: index==currentIndex,
                      onChanged: setCheck
                  ),
                ),
              ),
            ),
            Flexible(child: FittedBox(child: Text(title,style: TextStyle(color: kGrey,fontFamily: "Montserrat Regular",fontSize: 15)))),
          ],
        ),
      );
  }
}

