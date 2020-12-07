import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/level_graduation_widget.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import '../register_controller.dart';

class GraduationPage extends StatefulWidget {
  @override
  _GraduationPageState createState() => _GraduationPageState();
}

class _GraduationPageState
    extends State<GraduationPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 12,
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
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
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
                        "Nível de graduação?",
                        style: TextStyle(
                            fontFamily: "Montserrat Bold",
                            fontSize: 24,
                            color: KBlueTextColor),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Selecione a opção que melhor \ndefine seu nível de graduação",
                        style:
                        TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      LevelGraduationWidget(),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 40,left: 15,right: 15,bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonWidget(navigation: ()
                        {
                          if(RegisterValidateViewModel().validateGraduation(controller)){
                            if(controller.graduation=="Estudante (1º ao 8º semestre)" ||
                                controller.graduation=="Interno (9º ao 12º semestre)" ||
                                controller.graduation=="Médico Graduado")
                              Modular.to.pushNamed("/Speciality",arguments: "Qual a especialidade de maior interesse?");
                            else{
                              Modular.to.pushNamed("/Speciality",arguments: "Qual a sua especialidade?");
                            }
                          }
                          setState(() {});
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
