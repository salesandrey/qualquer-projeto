import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/location_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';


class LocationPage extends StatefulWidget {

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  GlobalKey<AutoCompleteTextFieldState<String>> keyStringState = new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<String>> keyStringCity = new GlobalKey();
  TextEditingController stateController;
  TextEditingController cityController;

  @override
  void initState() {
    stateController = TextEditingController();
    cityController = TextEditingController();
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

    return Observer(builder: (context){
      final controller = Provider.of<RegisterController>(context);
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
                      LinearProgressIndicator(minHeight: 8.0,value: 0.60,
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
                              "Agora selecione a sua localização",
                              textAlign: TextAlign.left,
                              style:
                              TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                            ),
                            LocationWidget(
                              changeCity:controller.changeLocationCity,
                              changeState:controller.changeLocationState,
                              streamCity: controller.cities,
                              states: controller.ufs.map((element) => element.nome).toList(),
                              submitCity: controller.changeLocationCity,
                              submitState: controller.submitStateValue,
                              keyStringCity: keyStringCity,
                              keyStringState: keyStringState,
                              label1: "Estado",
                              label2: "Cidade ",
                              icon1: Icon(Icons.keyboard_arrow_down,color: Color(0xFF050072)),
                              icon2: Icon(Icons.search,),
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
                        navigation: controller.locationCity!=null && controller.locationState!=null?
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
