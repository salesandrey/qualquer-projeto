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
              width: 25,
              height: 25,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff707070)),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                    checkColor: color,
                    activeColor: color,
                    value: controller.check,
                    onChanged: controller.setCheck
                ),
              ),
            ),
            Flexible(child: FittedBox(child: Text(controller.title,style: TextStyle(color: kGrey)))),
          ],
        ),
      );
    });


  }
}
