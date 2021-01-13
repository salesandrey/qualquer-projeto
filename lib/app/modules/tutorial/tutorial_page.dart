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

  final String screenCall;

  const TutorialPage({Key key, this.screenCall}) : super(key: key);

  @override
  _TutorialPageState createState() => _TutorialPageState(screenCall: screenCall);
}

class _TutorialPageState extends ModularState<TutorialPage, TutorialController> {

  final String screenCall;


  PageController pageController = PageController(initialPage: 0);
  int index = 0;
  List<Widget> tab = [
    Instruction1(),
    Instruction2(),
    Instruction3(),
    Instruction4(),
    Instruction5(),
  ];

  _TutorialPageState({this.screenCall});

  void goAhead(){
    index++;
    if(index<=4){
      pageController.jumpToPage(index);
    }
    if(index>4 && screenCall=="Register"){
      Modular.to.pushReplacementNamed("/OnBoarding");
    }

    if(index>4 && screenCall=="Navigator"){
      Modular.to.pop();
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
  void initState() {
    controller.getGodFather();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
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
              PageView(controller: pageController,children: tab,onPageChanged: (value){setState(() {});},physics: new NeverScrollableScrollPhysics(),),
              Positioned(bottom: 0,child: ButtonsPageViewWidget(
                controller: pageController,
                goAhead:(){goAhead();},
                goBack: index == 0 ? null : (){goBack();},))
              ],),)
      ),
    );
  }
}
