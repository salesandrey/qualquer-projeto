import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/autocomplete_text_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';

import '../register_controller.dart';

class SpecialityPage extends StatefulWidget {

  final String title;

  const SpecialityPage({Key key, this.title}) : super(key: key);

  @override
  _SpecialityPageState createState() => _SpecialityPageState(title);
}

class _SpecialityPageState extends State<SpecialityPage> {

  final String title;
  GlobalKey<AutoCompleteTextFieldState<String>> keyStringSpeciality = new GlobalKey();
  TextEditingController specialityController;
  FocusNode speciality;

  _SpecialityPageState(this.title);

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
                      child: Row(
                        children: [
                          Expanded(
                            flex: 16,
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
