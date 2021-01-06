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


  bool showOptions = true;

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
            margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular",color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ImageIcon(AssetImage("assets/images/search-interface-symbol (1).png"),color: Color(0xFF050072),),
                        ),
                        hintText: "Buscar e-mail ou @ do Instagram",
                        hintStyle: TextStyle(color: kGrey,fontFamily: "Montserrat Regular",fontSize: 15),
                      )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(height: 20,),
                    Text("Nível de graduação",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15),),
                    Padding(
                      padding: const EdgeInsets.only(top:10,bottom: 20),
                      child: Column(children: controller.listGraduation,),
                    ),
                    Text("Programas PadrinhoMed",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15),),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 20),
                      child: Column(children: controller.programs),
                    ),
                    Text("Especialidades",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15),),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10),
                      child: ConstrainedBox(constraints: true ? BoxConstraints() : BoxConstraints(maxHeight: 50.0),
                        child:showOptions?
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          controller.specialits[0],
                          controller.specialits[1],
                          controller.specialits[2],
                          controller.specialits[3],
                          InkWell(onTap: (){
                            showOptions = false;
                            setState(() {});
                          },
                            child: Container(
                              padding: EdgeInsets.only(top: 17),
                              child: Text("Mostrar todas",style: TextStyle(color: Color(0xFF6259B2,),fontSize: 15,fontFamily: "Montserrat Bold",decoration: TextDecoration.underline,),),),
                          )],) :
                        Column(children: controller.specialits),
                      ),


                    ),
                  ],),
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
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
