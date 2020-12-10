import 'dart:ui';

import 'package:PadrinhoMED/app/modules/tutorial/components/buttons_pageview_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/instruction_1_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/instruction_2_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/instruction_3_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/instruction_4_widget.dart';
import 'package:PadrinhoMED/app/modules/tutorial/components/instruction_5_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'tutorial_controller.dart';

class TutorialPage extends StatefulWidget {

  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends ModularState<TutorialPage, TutorialController> {


  PageController pageController = PageController(initialPage: 0);
  int index = 1;
  List<Widget> tab = [
    Instruction1(),
    Instruction2(),
    Instruction3(),
    Instruction4(),
    Instruction5(),
  ];

  void goAhead(){
    index++;
    if(index<=4){
      pageController.jumpToPage(index);
    }
    if(index>4){
      Modular.to.pushReplacementNamed("/OnBoarding");
    }

  }

  void goBack(){
    index--;
    if(index<0){
      index =0;
    }else
      {
        pageController.jumpToPage(index);
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(alignment: Alignment.center,
          children: [
            Positioned.fill(
               child:
               Container(
                 decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg.JPG",),fit: BoxFit.fill,)),
                 child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
                    child: Container(color: Colors.white.withOpacity(0),
                    )),
               ),
            ),
            PageView(controller: pageController,children: tab,onPageChanged: (value){setState(() {});},),
            Positioned(bottom: 0,child: ButtonsPageViewWidget(
              controller: pageController,
              goAhead:(){goAhead();},
              goBack: index == 0 ? null : (){goBack();},))
            ],),)
    );
  }
}
