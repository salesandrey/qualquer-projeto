import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/location_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
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

  GlobalKey<AutoCompleteTextFieldState<String>> keyStringState = new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<String>> keyStringCity = new GlobalKey();
  RegisterController controller;
  TextEditingController stateController;
  TextEditingController cityController;

  @override
  void initState() {
    stateController = TextEditingController();
    cityController = TextEditingController();
    controller = Provider.of<RegisterController>(context,listen: false);
    controller.getUF();
    super.initState();
  }

  @override
  void dispose() {
    stateController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder: (context){
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
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
                              "Beleza!",
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
                              "Agora selecione o seu \nestado (UF) e a sua cidade:",
                              textAlign: TextAlign.left,
                              style:
                              TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                            ),
                            LocationWidget(
                                controller: controller,
                              cityController: cityController,
                              keyStringCity: keyStringCity,
                              keyStringState: keyStringState,
                              label1: "Selecione o Estado",
                              label2: "E agora,sua cidade ",
                              icon1: Icon(Icons.keyboard_arrow_down,color: Color(0xFF050072)),
                              icon2: Icon(Icons.search,),
                              stateController: stateController,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container()
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(bottom: 40,left: 40,right: 40,
                    child: ButtonConfirmWidget(
                        navigation: (controller.ufsString!=null && controller.ufsString.contains(controller.locationState)) && (controller.citiesString!=null && controller.citiesString.contains(controller.locationCity))?
                            (){
                          if(RegisterValidateViewModel().validateLocation(controller)){
                            Modular.to.pushNamed("/Graduation");
                          }}:null,
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
        ),
      );

    });

  }
}
