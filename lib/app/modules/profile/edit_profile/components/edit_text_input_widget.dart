import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class EditTextIInputWidget extends StatelessWidget {

  final String labelText;
  final int maxLength;
  final int maxLine;
  final bool enable;
  final Color contentColor;
  final InputCounterWidgetBuilder counter;
  final FocusNode focusNode;
  final Function requestNode;
  final bool isVisibility;
  final bool controllerValidator;
  final TextEditingController controller;
  final Function onChanged;

  const EditTextIInputWidget({Key key, this.labelText, this.controller, this.onChanged, this.maxLine, this.maxLength, this.focusNode, this.isVisibility, this.controllerValidator, this.requestNode, this.counter, this.enable, this.contentColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        maxLength: maxLength,
        maxLines: maxLine,
        focusNode: focusNode,
        controller: controller,
        onTap: requestNode,
        onChanged: onChanged,
        obscureText: isVisibility,
        buildCounter: counter,
        enabled: enable,
        style: TextStyle(
            color: contentColor, fontSize: 16, fontFamily: "Montserrat Bold"),
        decoration: InputDecoration(
          labelText: labelText,
          counterStyle: TextStyle(fontFamily: "Montserrat Regular",fontSize: 15,color: Color(0xFF666666)),
          labelStyle: TextStyle(fontFamily: "Montserrat Regular",height: 1.0,
              color: focusNode.hasFocus?controllerValidator?Colors.redAccent:Color(0xFF050072):KgreyColor,fontSize: 18),
          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: KGreyColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: focusNode.hasFocus?Color(0xFF050072):KgreyColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
