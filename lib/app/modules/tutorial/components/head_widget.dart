import 'package:flutter/material.dart';


class HeadWidget extends StatelessWidget {

  final Color color;
  final String title;
  final String head;
  final String smallHead;
  final Color titleColor;
  final Color headColor;

  const HeadWidget({Key key, this.color, this.title, this.head, this.smallHead, this.titleColor, this.headColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 64,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: titleColor, fontSize: 12,fontFamily: "Montserrat Regular"),
          ),
          Row(
            children: [
              Container(
                child: Flexible(
                  child: FittedBox(
                    child: Text(
                      head,
                      style: TextStyle(
                          color: headColor,
                          fontSize: 16,
                          fontFamily: "Montserrat Bold"),
                    ),
                  ),
                ),
              ),
              Container(
                child: Flexible(
                  child: FittedBox(
                    child: Text(
                      smallHead,
                      style: TextStyle(
                          color: headColor,
                          fontSize: 14,
                          fontFamily: "Montserrat Bold"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
