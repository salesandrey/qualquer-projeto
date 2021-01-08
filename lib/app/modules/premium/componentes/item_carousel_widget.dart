import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ItemCarouselWidget extends StatelessWidget {

  final String image;
  final String title;
  final String description;

  const ItemCarouselWidget({Key key, this.image, this.title, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 96,
            width: 96,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: KOrange2Color.withOpacity(
                  0.9),
            ),
            child: Center(
              child: Image(
                color: Colors.white,
                image: AssetImage(image),
                width: 50,
              ),
            ),
          ),
          SizedBox(height: 16,),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Montserrat Bold",
                    color: KBlueColor,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Montserrat Regular",
                    color: Kdeep_perpleColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

