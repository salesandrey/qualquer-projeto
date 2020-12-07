import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BoxOptionWidget extends StatelessWidget {


  final String iconImage;
  final String text;
  final Function navigation;

  const BoxOptionWidget({Key key, this.iconImage, this.text, this.navigation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10,left: 15,right: 15),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Colors.white,
      ),
      child: Center(
        child: ListTile(
          onTap: navigation,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          leading: Image.asset(iconImage,color: Color(0xFF6259B2),height: 32,width: 30,),
          title: Text(text,style: TextStyle(color: Color(0xFF050072),fontFamily: "Montserrat Regular",fontSize: 20 ),),
          trailing: Icon(Icons.arrow_forward_ios,size: 26,color:Kdeep_PurpleAccentColor),
        ),
      ),
    );
  }
}
