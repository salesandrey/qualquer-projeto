import 'package:flutter/material.dart';

class RoundedIconWidget extends StatelessWidget {

  final Color roundedColor;
  final String image;
  final String text;

  const RoundedIconWidget({Key key, this.roundedColor, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        height: 80,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 40,
              decoration: BoxDecoration(
                color: roundedColor,
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(image),
                    height: 22,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Montserrat Regular"
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
