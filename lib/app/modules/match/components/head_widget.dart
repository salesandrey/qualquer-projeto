import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HeaderWidget extends StatelessWidget {


  final Color backgroundColor;
  final String title;
  final Color colorTitle;
  final String nameCategory;
  final Color colorCategory;

  const HeaderWidget({Key key,
    this.backgroundColor,
    this.title,
    this.colorTitle,
    this.nameCategory,
    this.colorCategory}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 64,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: colorTitle, fontSize: 12,fontFamily: "Montserrat Regular"),
          ),
          SizedBox(height: 1,),
          Row(
            children: [
              Container(
                child: Flexible(
                  child: FittedBox(
                    child: Text(
                      nameCategory,
                      style: TextStyle(
                          color: colorCategory,
                          fontSize: 18,
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
