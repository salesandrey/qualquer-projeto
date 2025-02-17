import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/activities_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import '../register_controller.dart';

class ProgramsPage extends StatefulWidget {

  @override
  _ProgramsPageState createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder: (context){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: KPrimaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    LinearProgressIndicator(minHeight: 8.0,value: 0.90,
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
                      padding: EdgeInsets.symmetric(horizontal: 40),
                        child: ActivitiesWidget(),
                      ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.zero,
                              width: 25,
                              height: 25,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Theme(
                                  data: ThemeData(unselectedWidgetColor: Colors.white),
                                  child: Checkbox(
                                      checkColor: kCheck,
                                      activeColor: kCheck,
                                      value: controller.checkTerm,
                                      onChanged: controller.changeTerm))),
                          FittedBox(
                              child: RichText(text: TextSpan(style: TextStyle(fontFamily: "Montserrat Regular",fontSize: 15,color:kGrey),
                                  children: [
                                    TextSpan(text: "Li e concordo com os "),
                                    TextSpan(recognizer: TapGestureRecognizer()..onTap = (){Modular.to.pushNamed("/Terms");},text: "Termos",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,color:kGrey,decoration: TextDecoration.underline),),
                                  ]),),),],),),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 40,horizontal: 40),
                      child:ButtonConfirmWidget(
                        navigation: controller.activities.isNotEmpty && controller.checkTerm?
                            () async{
                          controller.changeLoading(true);
                          await controller.saveData();
                          setState(() {});
                          controller.changeLoading(false);
                        }:null,
                        disableColor: KButtonLightColor,
                        disableTextColor:KButtonLightTextColor,
                        text: "FINALIZAR",
                        color: Color(0xFF6259B2),
                        textColor: Colors.white,
                        highLightColor: KBlueTextColor,
                        elevation: 0.00),)

                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });

  }
}
  