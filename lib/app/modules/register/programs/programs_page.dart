import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/activities_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
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
                        child: ActivitiesWidget(),
                      ),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Container(
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
                          Flexible(child: FittedBox(child: Text("Li e concordo com os Termos",style: TextStyle(color: kGrey)))),
                ],
              ),
          ),
                    Container(
                      padding: const EdgeInsets.only(top: 40,left: 15,right: 15,bottom: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ButtonWidget(navigation: () async{
                            controller.changeLoading(true);
                            await controller.saveData();
                            setState(() {});
                            controller.changeLoading(false);
                          }, title: "FINALIZAR",color: KButtonLightColor,titleColor:KButtonLightTextColor, highlightColor: KBlueTextColor,elevation: 0.00,)

                        ],
                      ),
                    ),
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
  