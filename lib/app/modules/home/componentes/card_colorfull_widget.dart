import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class CardColorFullWidget extends StatelessWidget {

  final Function navigator;
  final Color color;
  final String title;
  final String description;

  const CardColorFullWidget({Key key, this.navigator, this.color, this.title, this.description}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: navigator,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 158,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: FittedBox(
                child: Text(
                  title,
                  style: TextStyle(
                    color: KBlackColor,
                    fontSize: 18,
                    fontFamily: "Montserrat Bold",
                  ),
                ),
              ),
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  description,
                  style: TextStyle(
                    fontFamily: "Montserrat Regular",
                    color: KBlackColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
