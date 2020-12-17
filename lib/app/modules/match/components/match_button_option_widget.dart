import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class MatchButtonOptionWidget extends StatelessWidget {

  final Function goHome;
  final Function notLove;
  final Function love;
  final Function accessProfile;

  const MatchButtonOptionWidget({Key key,
    @required this.goHome,
    @required this.notLove,
    @required this.love,
    @required this.accessProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]
            ),
            child: MaterialButton(
              elevation: 0,
              height: 48,
              minWidth: 48,
              onPressed: goHome,
              color: KSecondaryColor,
              textColor: Colors.white,
              child: Image.asset("assets/images/match_home.png",
                color: Color(0xFF999999),
                width: 23,
                height: 21,),
              padding: EdgeInsets.all(5),
              shape: CircleBorder(),
            ),
          ),
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]),
            child: MaterialButton(
              elevation: 0,
              height: 64,
              minWidth: 64,
              onPressed: notLove,
              color: KSecondaryColor,
              textColor: Colors.white,
              child: Image.asset("assets/images/match_dislike.png",
                color: Colors.red,
                width: 25,
                height: 30),
              padding: EdgeInsets.all(5),
              shape: CircleBorder(),
            ),
          ),
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]),
            child: MaterialButton(
              elevation: 0,
              height: 64,
              minWidth: 64,
              onPressed: love,
              color: KSecondaryColor,
              textColor: Colors.white,
              child: Image.asset("assets/images/match_like.png",
                color: Color(0xFF6259B2),
                width: 30,
                height: 35,),
              padding: EdgeInsets.all(5),
              shape: CircleBorder(),
            ),
          ),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(blurRadius: 4,color: Color(0xFFd6d6d6),spreadRadius: 1.0,)]),
            child: MaterialButton(
              elevation: 0,
              height: 48,
              minWidth: 48,
              onPressed: accessProfile,
              color: KSecondaryColor,
              textColor: Colors.white,
              child: Image.asset("assets/images/match_person.png",
                color: Color(0xFF999999),
                width: 23,
                height: 21,),
              padding: EdgeInsets.all(5),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

