import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_filtered_controller.dart';

class HomeFilteredPage extends StatefulWidget {
  final String title;
  const HomeFilteredPage({Key key, this.title = "HomeFiltered"})
      : super(key: key);

  @override
  _HomeFilteredPageState createState() => _HomeFilteredPageState();
}

class _HomeFilteredPageState extends ModularState<HomeFilteredPage, HomeFilteredController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [



                SizedBox(
                  height: 10,
                ),
                Container(
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                      ],
                    ),
                  ),
                ),
                Divider(),
                StreamBuilder<List<UserMatchModel>>(
                  stream: null,
                  builder: (context,snapshot){
                    return Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
