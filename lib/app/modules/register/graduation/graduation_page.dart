import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/level_graduation_widget.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import '../register_controller.dart';

class GraduationPage extends StatefulWidget {
  @override
  _GraduationPageState createState() => _GraduationPageState();
}

class _GraduationPageState extends State<GraduationPage> {

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder:(context){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LinearProgressIndicator(minHeight: 8.0,value: 0.70,
                          backgroundColor: Color(0xFFE4E2F0),
                          valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF6259B2))),
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
                              "Nível de graduação?",
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
                              "Selecione a opção que melhor \ndefine seu nível de graduação",
                              textAlign: TextAlign.left,
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
                    ],
                  ),
                ),
                Positioned(
                  bottom: 80,left: 0,right: 0,
                  child: Container(
                    padding: const EdgeInsets.only(left: 40,right: 40,bottom: 40),
                    child: ButtonConfirmWidget(
                        navigation: controller.graduation!=null && controller.graduation!=""? ()
                        {
                          if(RegisterValidateViewModel().validateGraduation(controller)){
                            if(controller.graduation=="Estudante (1º ao 8º semestre)" ||
                                controller.graduation=="Internato (9º ao 12º semestre)" ||
                                controller.graduation=="Médico generalista")
                              Modular.to.pushNamed("/Speciality",arguments: ["Qual a especialidade de maior interesse?",true]);
                            else{
                              Modular.to.pushNamed("/Speciality",arguments: ["Qual a sua especialidade?",false]);
                            }
                          }
                          setState(() {});
                        }: null,
                        disableColor: KButtonLightColor,
                        disableTextColor:KButtonLightTextColor,
                        text: "CONTINUAR",
                        color: Color(0xFF6259B2),
                        textColor: Colors.white,
                        highLightColor: KBlueTextColor,
                        elevation: 0.00),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

    });

  }
}
