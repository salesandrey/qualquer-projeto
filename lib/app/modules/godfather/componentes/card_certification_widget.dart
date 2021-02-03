import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';


class CardCertificationWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 94,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xFFE4E2F0),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.only(top: 10,left: 16),
          title: Text("Certificado #1",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 18,color: Color(0xFF050072))),
          subtitle: Container(
            padding: EdgeInsets.only(top: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("De Andrey S.",style: TextStyle(fontFamily: "Montserrat Regular",fontSize: 15,color: Color(0xFF050072))),
                Text("Em Fevereiro de 2021",style: TextStyle(fontFamily: "Montserrat Regular",fontSize: 15,color: Color(0xFF050072))),
              ],
            ),
          ),
        )
      ),
    );
  }
}
