import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class ButtonsPageViewWidget extends StatelessWidget {

  final PageController controller;
  final Function goAhead;
  final Function goBack;

  const ButtonsPageViewWidget({Key key, this.controller,this.goAhead, this.goBack}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 156,
            height: 56,
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              onPressed: goBack,
              color: Color(0xFF919193),
              textColor: Colors.white,
              disabledTextColor:Colors.white.withOpacity(0.1) ,
              disabledColor:Color(0xFF919193).withOpacity(0.35) ,
              shape: StadiumBorder(),
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top:16.0,bottom: 18),
                  child: Text(
                    "ANTERIOR",
                    style: TextStyle(fontSize: 18, fontFamily: "Montserrat Bold"),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 156,
            height: 56,
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              onPressed: goAhead,
              color: Color(0xFF919193),
              textColor: KSecondaryColor,
              shape: StadiumBorder(),
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top:16.0,bottom: 18),
                  child: Text(
                    "PRÓXIMO",
                    style: TextStyle(fontSize: 18, fontFamily: "Montserrat Bold"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
