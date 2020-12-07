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
            Image.asset("assets/images/bg.JPG",fit: BoxFit.fill,),
            PageView(controller: pageController,children: tab,onPageChanged: (value){setState(() {});},),
            Positioned(bottom: 0,child: ButtonsPageViewWidget(
              controller: pageController,
              goAhead:(){goAhead();},
              goBack: (){goBack();},))
            ],),)
    );
  }
}
