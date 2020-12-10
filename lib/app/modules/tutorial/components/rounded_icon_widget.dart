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
        width: 54,
        height: 71,
        child: Column(
          children: [
            Container(
              width: 40,
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
                    height: 24,
                    width: 21.59,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                fontFamily: "Montserrat Regular"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
