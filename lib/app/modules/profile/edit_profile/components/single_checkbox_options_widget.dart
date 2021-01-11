
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/single_checkbox_widget.dart';
import 'package:flutter/material.dart';

class SingleCheckboxOptionWidget extends StatelessWidget {

  final int checkGraduation;
  final Function changeGraduation;

  const SingleCheckboxOptionWidget({Key key, this.checkGraduation, this.changeGraduation}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleCheckboxWidget(
            title:"Estudante 1º a 8º semestre",
            color:Color(0xFFED7AA0),
            currentIndex: checkGraduation,
            index: 1,
            setCheck: (bool value){
              changeGraduation(1);
            }),
          SingleCheckboxWidget(
              title:"Internato 9º a 12º semestre",
              currentIndex: checkGraduation,
              index: 2,
              setCheck: (bool value){
                changeGraduation(2);
              },
              color:Color(0xFFA652B7)),
          SingleCheckboxWidget(
              title:"Médico Generalista",
              currentIndex: checkGraduation,
              index: 3,
              setCheck: (bool value){
                changeGraduation(3);
              },
              color:Color(0xFF6AA4E8)),
          SingleCheckboxWidget(
              title:"Residente / Em Especialização",
              currentIndex: checkGraduation,
              index: 4,
              setCheck: (bool value){
                changeGraduation(4);
              },
              color:Color(0xFF3FBAA3)),
          SingleCheckboxWidget(
              title:"Médico Especialista",
              currentIndex: checkGraduation,
              index: 5,
              setCheck: (bool value){
                changeGraduation(5);
              },
              color:Color(0xFFFFBE69)),
        ],
      ),
    );
  }
}
