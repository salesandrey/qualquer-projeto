import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/searching_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';


class CategoryPage extends StatefulWidget {


  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder: (context){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: KPrimaryColor,
        body: Stack(alignment: Alignment.bottomCenter,
          children: [
            Container(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LinearProgressIndicator(minHeight: 8.0,value: 0.40,
                          backgroundColor: Color(0xFFE4E2F0),
                          valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF6259B2))),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Vamos lá!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 24,
                                  color: KBlueTextColor),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SearchingWidget(),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Quem é o afilhado?",
                              style: TextStyle(
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 15,

                                  color: KGreyColor),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
                              textAlign: TextAlign.justify,
                              style:
                              TextStyle(fontSize: 14, color: KGreyColor,fontFamily: "Montserrat Regular"),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Quem é o padrinho?",
                              style: TextStyle(
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 15,

                                  color: KGreyColor),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu."
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu."
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
                              textAlign: TextAlign.justify,
                              style:
                              TextStyle(fontSize: 14, color: KGreyColor,fontFamily: "Montserrat Regular"),
                            ),
                            SizedBox(height:MediaQuery.of(context).size.height *0.2)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *0.15,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white.withOpacity(0.0), Colors.white.withOpacity(1.0)])
                      )),
                  Positioned(left: 40,right: 40,
                      child: ButtonConfirmWidget(
                          navigation: controller.typeSearch== null?
                          null : (){
                            print(controller.typeSearch);
                            if(RegisterValidateViewModel().validateTypeSearch(controller)){
                              if(controller.typeSearch=="Afilhado"){
                                Modular.to.pushReplacementNamed("/Video",arguments: "assets/videos/intro.mp4");
                              }else{
                                Modular.to.pushReplacementNamed("/Video",arguments: "assets/videos/intro2.mp4");
                              }
                            }},
                          disableColor: KButtonLightColor,
                          disableTextColor:KButtonLightTextColor,
                          text: "CONTINUAR",
                          color: Color(0xFF6259B2),
                          textColor: Colors.white,
                          highLightColor: KBlueTextColor,
                          elevation: 0.00)
                  ),
                ],alignment: Alignment.center,
              ),
            ),
          ],
        ),
      );
    });

  }
}
