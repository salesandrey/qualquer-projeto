import 'package:PadrinhoMED/app/modules/register/form_register/componentes/button_option_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

class SearchingWidget extends StatefulWidget {
  @override
  _SearchingWidgetState createState() => _SearchingWidgetState();
}

class _SearchingWidgetState extends State<SearchingWidget> {
  
  
  int selectedValue = 0;


  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25, bottom: 15),
          child: Text(
            "Você gostaria de ser: ",
            style: TextStyle(
                fontFamily: "Montserrat Bold",
                fontSize: 18,
                color: KBlackLightTextColor),
          ),
        ),
        ButtonOptionWidget(
          function: (){
            selectedValue = 1;
            controller.changeTypeSearch("Afilhado");
            setState(() {});
          },
          text: "Afilhado",
          height: 56.00,
          radius: 50.00,
          centerDistance: 20.00,
          elevation: 0.00,
          bordSize: 1.0,
          fontFamily: selectedValue==1? "Montserrat Bold" : "Montserrat Regular",
          textColor: selectedValue==1? Colors.white:Color(0xFF050072),
          color: selectedValue==1?KBlueColor:Colors.white,),
        SizedBox(
          height: 8,
        ),
        ButtonOptionWidget(
          function: (){
            selectedValue = 2;
            controller.changeTypeSearch("Padrinho");
            setState(() {});
          },
          text: "Padrinho",
          height: 56.00,
          radius: 50.00,
          centerDistance: 50.00,
          elevation: 0.00,
          bordSize: 1.0,
          fontFamily: selectedValue==2? "Montserrat Bold" : "Montserrat Regular",
          textColor: selectedValue==2? Colors.white:Color(0xFF050072),
          color: selectedValue==2? KBlueColor:Colors.white,)
      ],
    );
  }
}
