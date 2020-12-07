import 'package:PadrinhoMED/app/modules/favorite/favorite_module.dart';
import 'package:PadrinhoMED/app/modules/home/home_module.dart';
import 'package:PadrinhoMED/app/modules/profile/profile_module.dart';
import 'package:PadrinhoMED/app/modules/searching/searching_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'navigator_controller.dart';

class NavigatorPage extends StatefulWidget {
  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState
    extends ModularState<NavigatorPage, NavigatorController> {


    List<Widget> tab =[
      RouterOutlet(module: HomeModule()),
      RouterOutlet(module: SearchingModule()),
      Container(color:Colors.grey),
      RouterOutlet(module: FavoriteModule()),
      RouterOutlet(module: ProfileModule())];
    int index = 0;



    List<BottomNavigationBarItem> items;

    @override
    void initState() {
      items = [
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/home_icon.png",width: 32,height: 32),label: ""),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/search_icon.png",width: 32,height: 32),label: ""),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/bell_icon.png",width: 32,height: 32),label: ""),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/favorite_icon.png",width: 32,height: 32),label: ""),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/person_icon.png",width: 32,height: 32),label: ""),
      ];
    super.initState();
  }


    @override
    Widget build(BuildContext context) {
    return Observer(builder: (context){
      return SafeArea(
          child: Scaffold(
            body: PageView(controller: controller.pageController,children: tab,physics:new NeverScrollableScrollPhysics(),onPageChanged: (value){ setState(() {});},),
            bottomNavigationBar: AnimatedBuilder(
              animation: controller.pageController,
              builder: (context,snapshot){
              return BottomNavigationBar(
                  currentIndex: controller.pageController?.page?.round() ?? 0 ,
                  selectedIconTheme: IconThemeData(color: Color(0xFF050072),),
                  selectedItemColor: Color(0xFF050072),
                  items: items,
                  onTap:controller.changePage
              );
            },)
          ));
    });
  }
}

