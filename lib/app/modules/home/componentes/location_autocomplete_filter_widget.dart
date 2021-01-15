import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LocationAutocompleteFilterWidget extends StatelessWidget{

  final keyText;
  final controller;
  final TextStyle contentStyle;
  final Color element;
  final Function textSubmit;
  final Function onChanged;
  final Function focusChanged;
  final List<String> suggestion;
  final String hintText;
  final ImageIcon icon;

  const LocationAutocompleteFilterWidget({Key key,
    this.keyText,
    this.controller,
    this.contentStyle,
    this.element,
    this.textSubmit,
    this.onChanged,
    this.focusChanged,
    this.suggestion,
    this.hintText,
    this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
        child: SimpleAutoCompleteTextField(
            key: keyText,
            suggestionsAmount: 5,
            controller: controller,
            clearOnSubmit: false,
            onFocusChanged: focusChanged,
            textSubmitted: textSubmit,
            style: contentStyle,
            suggestions: suggestion,
            textChanged: onChanged,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.only(left: 7),
              suffixIcon: Transform.scale(scale: 0.5,child: icon),
              hintStyle: TextStyle(
                fontFamily: "Montserrat Regular",fontSize: 18,color: element,),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: element),
              ),
            ))
    );
  }
}
