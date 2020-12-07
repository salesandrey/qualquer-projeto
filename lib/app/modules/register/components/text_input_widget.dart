import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/text_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TextInputWidget extends StatelessWidget {

  final String labelText;
  final String hintText;
  final String helpText;
  final Function changeText;
  final bool validator;
  final String errorText;

  const TextInputWidget({Key key, this.labelText, this.hintText, this.helpText, this.changeText, this.validator, this.errorText}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold"),
        textAlignVertical: TextAlignVertical.center,
        onChanged: changeText,
        decoration: InputDecoration(
          helperText: helpText,
          helperStyle: TextStyle(fontSize: 15,color: Color(0xFF000099),fontFamily: "Montserrat Regular"),
          labelText: labelText,
          hintText: hintText,
          errorText: validator ?errorText:null,
          hintStyle: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold"),
          labelStyle: TextStyle(color: Kdeep_perpleColor,fontFamily: "Montserrat Regular",fontSize: 18),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: KGreyColor)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Kdeep_perpleColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
