import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CheckBoxWidget extends StatelessWidget {

  final CheckboxController controller;
  final Color color;

  const CheckBoxWidget({Key key, this.controller, this.color,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: kGrey,width:controller.check?2:1),
                borderRadius:BorderRadius.circular(2),
              ),
              child: Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Transform.scale(
                  scale: controller.check? 0.7 : 1,
                  child: Checkbox(
                      checkColor: color,
                      activeColor: color,
                      value: controller.check,
                      onChanged: controller.setCheck
                  ),
                ),
              ),
            ),
            Flexible(child: FittedBox(child: Text(controller.title,style: TextStyle(color: kGrey,fontFamily: "Montserrat Regular",fontSize: 15)))),
          ],
        ),
      );
    });


  }
}
