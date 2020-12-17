import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/match/components/card_profile_widget.dart';
import 'package:PadrinhoMED/app/utils/swip.dart';
import 'package:flutter/material.dart';

class SwipeCardWidget extends StatelessWidget {

  final List<UserMatchModel> listCard;
  final GlobalKey<SwipeStackState> swipeKey;

  SwipeCardWidget({Key key, this.listCard, this.swipeKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: SwipeStack(
          key: swipeKey,
          children: listCard.map((value) {
            return SwiperItem(
                builder: (SwiperPosition position, double progress) {
                  return CardProfile(user: value);
                }
            );
          }).toList(),
          maxAngle: 0,
          animationDuration: Duration(milliseconds: 500),
          visibleCount: 3,
          stackFrom: StackFrom.Right,
          translationInterval: 10,
          scaleInterval: 0.03,
          onEnd: () => debugPrint("onEnd"),
          onSwipe: (int index, SwiperPosition position) =>
              debugPrint("onSwipe $index $position"),
        ));
  }
}