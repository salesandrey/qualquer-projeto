import 'package:flutter/material.dart';



class CardDisableContactWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.04 * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text("Essas informações só aparecem caso \nvocês “se adicionem”",textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xFF666666),fontSize: 14,fontFamily: "Montserrat Regular")),
    );
  }
}
