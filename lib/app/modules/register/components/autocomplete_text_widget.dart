import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AutoCompleteTextWidget extends StatelessWidget {

  final keyText;
  final controller;
  final Color element;
  final Function textSubmit;
  final Function onChanged;
  final Function focusChanged;
  final List<String> suggestion;
  final String labelText;
  final ImageIcon icon;

  const AutoCompleteTextWidget({this.keyText, this.controller, this.element, this.textSubmit, this.onChanged, this.focusChanged, this.suggestion, this.labelText, this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: SimpleAutoCompleteTextField(
        key: keyText,
        suggestionsAmount: 50,
        controller: controller,
        clearOnSubmit: false,
        onFocusChanged: focusChanged,
        textSubmitted: textSubmit,

        style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,color: element,),
        suggestions: suggestion,
        textChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,contentPadding: EdgeInsets.only(bottom: 8),
          suffixIcon: Transform.scale(scale: 0.5,child: icon),
          labelStyle: TextStyle(height: 1,
            fontFamily: "Montserrat Regular",fontSize: 18,color: element,),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: element),
          ),
        ))
    );
  }
}
