import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/match/components/card_profile_widget.dart';
import 'package:PadrinhoMED/app/utils/swip.dart';
import 'package:flutter/material.dart';

class SwipeCardWidget extends StatelessWidget {

  final List<UserMatchModel> listCard;
  final GlobalKey<SwipeStackState> swipeKey;
  final bool premium;
  final Function love;
  final Function notLove;

  SwipeCardWidget({Key key, this.listCard, this.swipeKey, this.love, this.notLove, this.premium}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
        width: MediaQuery.of(context).size.width,
        child: SwipeStack(
          key: swipeKey,
          children: listCard.map((value) {
            return SwiperItem(
                builder: (SwiperPosition position, double progress) {
                  return CardProfile(user: value,premium: premium);
                }
            );
          }).toList(),
          maxAngle: 0,
          animationDuration: Duration(milliseconds: 450),
          visibleCount: 3,
          stackFrom: StackFrom.Right,
          translationInterval: 9,
          scaleInterval: 0.03,
          love: love,
          notLove: notLove,
          onEnd: () => debugPrint("onEnd"),
          onSwipe: (int index, SwiperPosition position) =>
              debugPrint("onSwipe $index $position"),
        ));
  }
}