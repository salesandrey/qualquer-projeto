import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class EditTextIInputWidget extends StatelessWidget {

  final String labelText;
  final int maxLength;
  final int maxLine;
  final FocusNode focusNode;
  final Function requestNode;
  final bool isVisibility;
  final bool controllerValidator;
  final TextEditingController controller;
  final Function onChanged;

  const EditTextIInputWidget({Key key, this.labelText, this.controller, this.onChanged, this.maxLine, this.maxLength, this.focusNode, this.isVisibility, this.controllerValidator, this.requestNode}) : super(key: key);

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
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontFamily: "Montserrat Bold"),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(fontFamily: "Montserrat Regular",
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
