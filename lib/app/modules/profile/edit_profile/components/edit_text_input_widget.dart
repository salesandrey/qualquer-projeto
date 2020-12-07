import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class EditTextIInputWidget extends StatelessWidget {

  final String labelText;
  final int maxLength;
  final int maxLine;
  final TextEditingController controller;
  final Function onChanged;

  const EditTextIInputWidget({Key key, this.labelText, this.controller, this.onChanged, this.maxLine, this.maxLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        maxLength: maxLength,
        maxLines: maxLine,
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontFamily: "Montserrat Bold"),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
              color: KgreyColor,
              fontSize: 16,
              fontWeight: FontWeight.normal),
          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: KGreyColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: KgreyColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
