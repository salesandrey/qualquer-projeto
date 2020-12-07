import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'button_option_widget.dart';

class SpecialityWidget extends StatefulWidget {
  @override
  _SpecialityWidgetState createState() => _SpecialityWidgetState();
}

class _SpecialityWidgetState extends ModularState<SpecialityWidget,RegisterController> {

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25, bottom: 15),
          child: Text(
            "Qual sua especialidade?",
            style: TextStyle(
                fontFamily: "Montserrat Bold",
                fontSize: 18,
                color: KBlackLightTextColor),
          ),
        ),
        ButtonOptionWidget(
          function: (){
            selectedValue = 1;
            controller.changeSpeciality("Clínica");
            setState(() {});
          },
          text: "Clínica",
          height: 56.00,
          radius: 50.00,
          centerDistance: 50.00,
          elevation: 0.00,
          bordSize: selectedValue==1? 2.0 : 1.0,
          fontFamily: selectedValue==1? "Montserrat Bold" : "Montserrat Regular",
          textColor: selectedValue==1? Colors.white:Colors.black,
          color: selectedValue==1?KBlueColor:Colors.white,),
        SizedBox(
          height: 8,
        ),
        ButtonOptionWidget(
          function: (){
            selectedValue = 2;
            controller.changeSpeciality("Pediatria");
            setState(() {});
          },
          text: "Pediatria",
          height: 56.00,
          radius: 50.00,
          centerDistance: 50.00,
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
            controller.changeSpeciality("Cirurgia");
            setState(() {});
          },
          text: "Cirurgia",
          height: 56.00,
          radius: 50.00,
          centerDistance: 50.00,
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
            controller.changeSpeciality("Ginecologia e Obstetrícia");
            setState(() {});
          },
          text: "Ginecologia e Obstetrícia",
          height: 56.00,
          radius: 50.00,
          centerDistance: 50.00,
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
            controller.changeSpeciality("As especialidades + legais");
            setState(() {});
          },
          text: "As especialidades + legais",
          height: 56.00,
          radius: 50.00,
          centerDistance: 50.00,
          elevation: 0.00,
          bordSize: selectedValue==5? 2.0 : 1.0 ,
          fontFamily: selectedValue==5? "Montserrat Bold" : "Montserrat Regular",
          textColor: selectedValue==5? Colors.white:Colors.black,
          color: selectedValue==5? KBlueColor:Colors.white,),
      ],
    );
  }
}
