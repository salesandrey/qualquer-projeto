import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/autocomplete_text_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import '../register_controller.dart';

class SpecialityPage extends StatefulWidget {

  final String title;
  final bool message;

  const SpecialityPage({Key key, this.title, this.message}) : super(key: key);

  @override
  _SpecialityPageState createState() => _SpecialityPageState(title: title,message: message);
}

class _SpecialityPageState extends State<SpecialityPage> {

  final String title;
  final bool message;
  GlobalKey<AutoCompleteTextFieldState<String>> keyStringSpeciality = new GlobalKey();
  TextEditingController specialityController;
  FocusNode speciality;

  _SpecialityPageState({this.title,this.message});

  @override
  void initState() {
    speciality = FocusNode();
    specialityController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    speciality.dispose();
    specialityController.dispose();
    super.dispose();
  }

  void submitValueToController(String value){
    specialityController.text = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder: (context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 32),
                      child: InkWell(
                        onTap: () {
                          Modular.to.pop();
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.arrow_back_ios,
                              color: Kdeep_perpleColor,
                              size: 18,
                            ),
                            Text('VOLTAR',
                              style: TextStyle(
                                fontFamily: "Montserrat Regular",
                                fontSize: 15,
                                color: Kdeep_perpleColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Montserrat Bold",
                                fontSize: 24,
                                color: KBlueTextColor),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Escolha a especialidade que melhor define sua atuação",
                            textAlign: TextAlign.left,
                            style:
                            TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Theme(
                            data: ThemeData(primaryColor:Color(0xFF050072)),
                            child: Container(
                              child: AutoCompleteTextWidget(
                                labelText: "Digite sua especialidade",
                                element: kGrey,
                                controller: specialityController,
                                suggestion: controller.specialityList,
                                textSubmit: controller.changeSpeciality,
                                onChanged: controller.changeSpeciality,
                                keyText: keyStringSpeciality,
                              ),
                            ),
                          ),

                          Visibility(
                            visible: message,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Container(padding: EdgeInsets.only(top: 50),
                                  child:Text("Fique tranquilo!",style: TextStyle(fontSize: 15, fontFamily: "Montserrat Bold",color: kGrey),textAlign: TextAlign.left,)),
                              Container(padding: EdgeInsets.only(top: 8),
                                  child:Text("A especialidade de interesse serve para configurarmos o aplicativo da melhor forma para você. Lembre-se que é possível editar essa especialidade sempre que quiser, editando seu Perfil no App, em nossa barra do Menu.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Montserrat Regular",
                                        color: kGrey),
                                    textAlign: TextAlign.left,)),
                            ],),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(bottom: 40,left: 40,right: 40,
                  child: ButtonConfirmWidget(
                      navigation: !controller.specialityList.contains(controller.speciality)?
                      null : (){
                        if(RegisterValidateViewModel().validateSpeciality(controller)){
                          Modular.to.pushNamed("/Programs");
                        }},
                      disableColor: KButtonLightColor,
                      disableTextColor:KButtonLightTextColor,
                      text: "CONTINUAR",
                      color: Color(0xFF6259B2),
                      textColor: Colors.white,
                      highLightColor: KBlueTextColor,
                      elevation: 0.00)
              ),
            ],
          ),
        ),
      );
    });

  }
}
