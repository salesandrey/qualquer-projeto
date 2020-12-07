import 'package:PadrinhoMED/app/modules/register/form_register/componentes/button_option_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';


class LevelGraduationWidget extends StatefulWidget {
  @override
  _LevelGraduationWidgetState createState() => _LevelGraduationWidgetState();
}

class _LevelGraduationWidgetState extends State<LevelGraduationWidget> {

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      ButtonOptionWidget(
        function: (){
          selectedValue = 1;
          controller.changeGraduation("Estudante (1º ao 8º semestre)");
          setState(() {});
        },
        text: "Estudante\n(1º ao 8º semestre)",
        height: 68.00,
        radius: 30,
        centerDistance: 32,
        elevation: 0.00,
        bordSize: selectedValue==1? 2.0 : 1.0,
        fontFamily: selectedValue==1? "Montserrat Bold" : "Montserrat Regular",
        textColor: selectedValue==1? Colors.white:Colors.black,
        color: selectedValue==1? KBlueColor:Colors.white,),
      SizedBox(
        height: 8,
      ),
      ButtonOptionWidget(
        function: (){
          selectedValue = 2;
          controller.changeGraduation("Interno (9º ao 12º semestre)");
          setState(() {});
        },
        text: "Internato\n(9º ao 12º semestre)",
        height: 68.00,
        radius: 30.00,
        centerDistance: 32.00,
        elevation: 0.00,
        bordSize: selectedValue==2? 2.0 : 1.0,
        fontFamily: selectedValue==2? "Montserrat Bold" : "Montserrat Regular",
        textColor: selectedValue==2? Colors.white:Colors.black,
        color: selectedValue==2? KBlueColor:Colors.white,),
      SizedBox(
        height: 8,
      ),
      ButtonOptionWidget(
        function: (){
          selectedValue = 3;
          controller.changeGraduation("Médico Graduado");
          setState(() {});
        },
        text: "Médico\nGraduado",
        height: 68.00,
        radius: 30,
        centerDistance: 32,
        elevation: 0.00,
        bordSize: selectedValue==3? 2.0 : 1.0,
        fontFamily: selectedValue==3? "Montserrat Bold" : "Montserrat Regular",
        textColor: selectedValue==3? Colors.white:Colors.black,
        color: selectedValue==3? KBlueColor:Colors.white,),
      SizedBox(
        height: 8,
      ),
      ButtonOptionWidget(
        function: (){
          selectedValue = 4;
          controller.changeGraduation("Em Especialização / Residente");
          setState(() {});
        },
        text: "Em Especialização\n/ Residente",
        height: 68.00,
        radius: 30,
        centerDistance: 32,
        elevation: 0.00,
        bordSize: selectedValue==4? 2.0 : 1.0,
        fontFamily: selectedValue==4? "Montserrat Bold" : "Montserrat Regular",
        textColor: selectedValue==4? Colors.white:Colors.black,
        color: selectedValue==4? KBlueColor:Colors.white,),
      SizedBox(
        height: 8,
      ),
      ButtonOptionWidget(
        function: (){
          selectedValue = 5;
          controller.changeGraduation("Médico Especialista");
          setState(() {});
        },
        text: "Médico\nEspecialista",
        height: 68.00,
        radius: 30,
        centerDistance: 32,
        elevation: 0.00,
        bordSize: selectedValue==5? 2.0 : 1.0,
        fontFamily: selectedValue==5? "Montserrat Bold" : "Montserrat Regular",
        textColor: selectedValue==5? Colors.white:Colors.black,
        color: selectedValue==5? KBlueColor:Colors.white,),
    ],);
  }
}
