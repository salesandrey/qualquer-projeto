import 'package:PadrinhoMED/app/modules/match/components/card_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:swipe_stack/swipe_stack.dart';

class SwipeCardWidget extends StatelessWidget {

  final List<CardProfile> listCard;
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
                  return Material(
                      elevation: 4,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: CardProfile(title: value.title,colorIconTitle: value.colorIconTitle,
                      iconTitle: value.iconTitle,content: value.content,head: value.head,colorCard: value.colorCard,
                        activits: value.activits)
                  );
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