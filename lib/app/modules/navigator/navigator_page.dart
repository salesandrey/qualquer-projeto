import 'package:PadrinhoMED/app/modules/favorite/favorite_module.dart';
import 'package:PadrinhoMED/app/modules/home/home_module.dart';
import 'package:PadrinhoMED/app/modules/notification/notification_module.dart';
import 'package:PadrinhoMED/app/modules/profile/profile_module.dart';
import 'package:PadrinhoMED/app/modules/searching/searching_module.dart';
import 'package:PadrinhoMED/app/repositories/notification_repository.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'navigator_controller.dart';

class NavigatorPage extends StatefulWidget {

  final int currentPage;
  final int currentTabPatronize;

  const NavigatorPage({Key key, this.currentPage, this.currentTabPatronize}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState(
      currentPage: currentPage,
      currentTabPatronize: currentTabPatronize);
}

class _NavigatorPageState extends ModularState<NavigatorPage, NavigatorController> {


    final int currentPage;
    final int currentTabPatronize;

    List<Widget> tab;

    List<BottomNavigationBarItem> items;

  _NavigatorPageState({this.currentPage, this.currentTabPatronize});

    @override
    void initState() {
      controller.changePageController(currentPage);
      tab =[
        RouterOutlet(module: HomeModule(),),
        RouterOutlet(module: SearchingModule()),
        RouterOutlet(module: NotificationModule()),
        RouterOutlet(module: FavoriteModule(currentIndex: currentTabPatronize)),
        RouterOutlet(module: ProfileModule())];
      items = [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home_icon.png",),size: 32,),label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/search_icon.png"),size: 32),label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/bell_icon.png"),size: 32,),label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/favorite_icon.png"),size: 32,),label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/person_icon.png"),size: 32,),label: ""),
      ];
    super.initState();
  }


    @override
    Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Observer(builder: (context){
        return Scaffold(
            body: PageView(
              controller: controller.pageController,
              children: tab,physics:new NeverScrollableScrollPhysics(),
              onPageChanged: (value){ setState(() {});},),
                bottomNavigationBar: AnimatedBuilder(
                  animation: controller.pageController,
                  builder: (context,snapshot){
                    return BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.white,
                        unselectedIconTheme: IconThemeData(color: kGrey),
                        currentIndex: controller.pageController?.page?.round() ?? currentPage,
                        selectedItemColor: Color(0xFF050072),
                        items: items,
                        onTap:controller.changePage
                    );
                  },
                )
        );
      }),
    );
  }
}

