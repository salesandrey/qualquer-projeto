import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/text_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


class TextInputWidget extends StatelessWidget {

  final String labelText;
  final String hintText;
  final String helpText;
  final Function changeText;
  final bool validator;
  final String errorText;
  final FocusNode focusNode;
  final TextEditingController controller;
  final Function function;
  final List<TextInputFormatter> inputs;
  final TextInputType keyboardType;
  final TextCapitalization capitalize;

  const TextInputWidget({Key key, this.labelText, this.hintText, this.helpText, this.changeText, this.validator, this.errorText, this.focusNode, this.controller, this.function, this.keyboardType, this.capitalize, this.inputs}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onTap: function ,
        controller: controller,
        style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold"),
        textAlignVertical: TextAlignVertical.center,
        onChanged: changeText,
        focusNode: focusNode,
        textCapitalization: capitalize,
        keyboardType: keyboardType,
        inputFormatters: inputs,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 8),
          helperMaxLines: 3,
          helperText: helpText,
          helperStyle: TextStyle(fontSize: 15,color: KgreyColor,fontFamily: "Montserrat Regular"),
          labelText: labelText,
          errorText: validator ? errorText : null,
          labelStyle: TextStyle(height: 1,color: focusNode.hasFocus? Color(0xFF050072) : KgreyColor ,fontFamily: "Montserrat Regular",fontSize: 18,),
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
