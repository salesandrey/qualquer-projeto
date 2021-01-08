import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';

class CustomAutoCompletedWidget extends StatelessWidget {

  final keyText;
  final controller;
  final Color element;
  final Function textSubmit;
  final Function onChanged;
  final Function focusChanged;
  final List<String> suggestion;
  final String labelText;
  final dynamic icon;

  const CustomAutoCompletedWidget(
      {this.keyText, this.controller, this.element, this.textSubmit, this.onChanged, this.focusChanged, this.suggestion, this.labelText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SimpleAutoCompleteTextField(
            key: keyText,
            suggestionsAmount: 5,
            controller: controller,
            clearOnSubmit: false,
            onFocusChanged: focusChanged,
            textSubmitted: textSubmit,
            style: TextStyle(
              fontFamily: "Montserrat Regular", fontSize: 18, color: element,),
            suggestions: suggestion,
            textChanged: onChanged,

            decoration: InputDecoration(
              labelText: labelText,
              contentPadding: EdgeInsets.zero,
              suffixIcon: icon,
              labelStyle: TextStyle(
                fontFamily: "Montserrat Regular",
                fontSize: 18,
                color: element,),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: element),
              ),

            ))
    );
  }
}