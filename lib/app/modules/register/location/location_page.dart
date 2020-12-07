import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/location_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';


class LocationPage extends StatefulWidget {

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 10,
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
                Expanded(
                  flex: 2,
                  child: Container(
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
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Beleza!",
                          style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 24,
                              color: KBlueTextColor),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Agora selecione o seu \nestado (UF) e a sua cidade:",
                          style:
                          TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                        ),
                        LocationWidget(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container()
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonWidget(navigation: (){
                          if(RegisterValidateViewModel().validateLocation(controller)){
                            Modular.to.pushNamed("/Graduation");
                          }
                          setState(() {});
                        }, title: "CONTINUAR",color: KButtonLightColor,titleColor:KButtonLightTextColor, highlightColor: KBlueTextColor,elevation: 0.00,)

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
