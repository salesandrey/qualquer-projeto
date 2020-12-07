import 'package:PadrinhoMED/app/modules/match/components/rounded_icon_card_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {

  final colorCard;
  final String head;
  final String title;
  final String content;
  final String iconTitle;
  final Color colorIconTitle;
  final List<String> activits;

  const CardProfile({Key key,
    this.colorCard,
    this.head,
    this.title,
    this.content,
    this.iconTitle,
    this.colorIconTitle,
    this.activits}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        height: 460,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: colorCard,
              ),
              height: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        head,
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Montserrat Bold",
                            color: KBlackColor),
                      ),
                    ),
                    Container(
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Montserrat Bold",
                            color: KGreyColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 30),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        content,
                        style: TextStyle(fontSize: 14, color: KBlackColor,fontFamily: "Montserrat Regular"),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              indent: 15,
              endIndent: 15,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        iconTitle,
                        style: TextStyle(
                          fontSize: 14,
                          color: colorIconTitle,
                          fontFamily: "Montserrat Bold",
                        ),
                      ),
                    ),
                    Container(
                      child: Row(children: activits.map((e) => RoundedIconCardWidget(title: e)).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
