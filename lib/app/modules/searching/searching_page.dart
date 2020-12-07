import 'package:PadrinhoMED/app/modules/searching/components/apply_button_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'searching_controller.dart';

class SearchingPage extends StatefulWidget {
  final String title;
  const SearchingPage({Key key, this.title = "Searching"}) : super(key: key);

  @override
  _SearchingPageState createState() => _SearchingPageState();
}

class _SearchingPageState
    extends ModularState<SearchingPage, SearchingController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.addProgramsToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    if(controller.programs.isEmpty && controller.specialits.isEmpty)
    return Center(child: CircularProgressIndicator(backgroundColor: Colors.blue,),);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: kGrey,),
                        hintText: "Digite o nome aqui",
                        hintStyle: TextStyle(color: kGrey),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Text("Nível de graduação",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.only(top:10,bottom: 20),
                  child: Column(children: controller.listGraduation,),
                ),
                Text("Atividades de interesse",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.only(top:10.0,bottom: 20),
                  child: Column(children: controller.programs),
                ),
                Text("Especialidade",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.only(top:10.0,bottom: 10),
                  child: Column(children: controller.specialits,),
                ),
                Container(
                  padding: EdgeInsets.only(left: 22),
                  child: InkWell(onTap: (){}
                    ,child: Text("Quer mais filtros? Seja Premium!",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kCheck,
                          fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 20,),
                ApplyButtonWidget(
                  text: "APLICAR",
                  textColor:KButtonLightTextColor,
                  color: KButtonLightColor,
                  elevation: 0.00,
                  highLightColor: KBlueColor,
                  height: 56.00,
                  radius: 50.00,
                  centerDistance: 50.00,
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
