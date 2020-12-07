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
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.43,
            height: 56,
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              onPressed: goBack,
              color: KSecondaryColor.withOpacity(0.1),
              textColor: KSecondaryColor.withOpacity(0.35),
              shape: StadiumBorder(),
              child: FittedBox(
                child: Text(
                  "ANTERIOR",
                  style: TextStyle(fontSize: 16, fontFamily: "Montserrat Bold"),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.43,
            height: 56,
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              onPressed: goAhead,
              color: Color(0xff626567).withOpacity(0.8),
              textColor: KSecondaryColor,
              shape: StadiumBorder(),
              child: FittedBox(
                child: Text(
                  "PRÓXIMO",
                  style: TextStyle(fontSize: 16, fontFamily: "Montserrat Bold"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
