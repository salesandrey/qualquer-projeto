import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

class AutoCompleteTextWidget extends StatelessWidget {

  final keyText;
  final controller;
  final Color element;
  final Function textSubmit;
  final Function onChanged;
  final Function focusChanged;
  final List<String> suggestion;
  final String labelText;

  const AutoCompleteTextWidget({this.keyText, this.controller, this.element, this.textSubmit, this.onChanged, this.focusChanged, this.suggestion, this.labelText});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: SimpleAutoCompleteTextField(
        key: keyText,
        controller: controller,
        clearOnSubmit: false,

        onFocusChanged: focusChanged,
        textSubmitted: textSubmit,
        style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,color: element,),
        suggestions: suggestion,
        textChanged: onChanged,
        decoration: InputDecoration(

          labelText: labelText,
          suffixIcon: Icon(Icons.search),
          labelStyle: TextStyle(fontFamily: "Montserrat Regular",fontSize: 18,height: -7
          ),
          ),
        ),
    );
  }
}
