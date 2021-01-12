import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';

class AutoCompleteUpdateComponentWidget extends StatelessWidget {

  final keyText;
  final controller;
  final TextStyle contentStyle;
  final TextStyle hintStyle;
  final Color element;
  final Function textSubmit;
  final Function onChanged;
  final List<String> suggestion;
  final String hintText;
  final Icon icon;

  const AutoCompleteUpdateComponentWidget({
    this.keyText, this.controller,
    this.element, this.textSubmit,
    this.onChanged,this.suggestion,
    this.icon, this.contentStyle, this.hintText, this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: SimpleAutoCompleteTextField(
            key: keyText,
            suggestionsAmount: 5,
            controller: controller,
            clearOnSubmit: false,
            textSubmitted: textSubmit,
            style: contentStyle,
            suggestions: suggestion,
            textChanged: onChanged,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 7,bottom: 8),
              hintText: hintText,
              hintStyle: hintStyle,
              suffixIcon: icon,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: element),
              ),
            ))
    );
  }
}
