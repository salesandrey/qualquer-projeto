import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {

  final String imagePath;
  final String text;

  const ContentWidget({Key key, this.text, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      // width: MediaQuery.of(context).size.width*0.8,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: AssetImage(imagePath),color: Colors.white,width: 25,height: 27,)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(text,
                      style: TextStyle(
                        fontSize: 18,
                        color: KSecondaryColor,
                        fontFamily: "Montserrat Regular"
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
