import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/searching_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: 8,
                          color: KBlueColor,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          height: 8,
                          color: KButtonLightTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Vamos lá, então!",
                          style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 24,
                              color: KBlueTextColor),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Para começar, vamos te ajudar \na ser encontrado aqui no app:",
                          style:
                          TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                        ),
                        SearchingWidget(),
                      ],
                    ),
                  ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "O que faz um afilhado?",
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
                          "O que faz um padrinho?",
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
                      ],
                    ),
                  ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonWidget(
                          navigation: ()
                          {
                            print(controller.typeSearch);
                            if(RegisterValidateViewModel().validateTypeSearch(controller)){
                              if(controller.typeSearch=="Afilhado"){
                                Modular.to.pushReplacementNamed("/Video",arguments: "assets/videos/intro.mp4");
                              }
                              else{
                                Modular.to.pushReplacementNamed("/Video",arguments: "assets/videos/intro2.mp4");
                              }
                            }

                          }, title: "CONTINUAR",color: KButtonLightColor,titleColor:KButtonLightTextColor, highlightColor: KBlueTextColor,elevation: 0.00,)
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
