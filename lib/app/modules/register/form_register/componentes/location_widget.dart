import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/modules/register/components/autocomplete_text_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

class LocationWidget extends StatelessWidget {

  final GlobalKey<AutoCompleteTextFieldState<String>> keyStringState;
  final GlobalKey<AutoCompleteTextFieldState<String>> keyStringCity;
  final RegisterController controller;
  final TextEditingController stateController;
  final TextEditingController cityController;
  final String label1;
  final String label2;
  final Icon icon1;
  final Icon icon2;

  LocationWidget({Key key, this.controller, this.stateController, this.cityController, this.keyStringState, this.keyStringCity, this.label1, this.label2, this.icon1, this.icon2}) : super(key: key);

  void getCity() async{
    List<UfModel> value = controller.ufs.where((element) => identical(element.nome, controller.locationState)).toList();
    await controller.getCities(value[0].id.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Container(
          child:Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 15),
                  child: Text(
                    "Onde você mora?",
                    style: TextStyle(
                        fontFamily: "Montserrat Bold",
                        fontSize: 18,
                        color: KBlackLightTextColor),
                  ),
                ),
                Theme(
                  data: ThemeData(primaryColor:Color(0xFF050072)),
                  child: Container(
                      child: controller.ufsString==null?
                      CircularProgressIndicator():
                      AutoCompleteTextWidget(
                        icon: icon1,
                        labelText: label1,
                        element: Color(0xFF050072),
                        controller: stateController,
                        suggestion: controller.ufsString,
                        textSubmit:(value)
                        {
                          controller.changeLocationState(value);
                          controller.cleanListCities();
                          getCity();
                        },
                        onChanged: controller.changeLocationState,
                        keyText: keyStringState,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Visibility(visible: controller.citiesString==null?false:true,
                      child: Theme(
                        data:ThemeData(primaryColor:Color(0xFF050072)),
                        child: Container(child: controller.citiesString!=null && controller.citiesString.isEmpty?
                        CircularProgressIndicator():
                        AutoCompleteTextWidget(
                                icon: icon2,
                                labelText: label2,
                                element: kGrey,
                                controller: cityController,
                                suggestion: controller.citiesComputed,
                                textSubmit: (value){
                                  controller.changeLocationCity(value);
                                print(controller.locationState);
                                print(controller.locationCity);
                                print(controller.ufsString.contains(controller.locationState));
                                print(controller.citiesString.contains(controller.locationCity));
                                },
                                onChanged: controller.changeLocationCity,
                                keyText: keyStringCity)
                        ),
                      )),
                )
              ]));
    });
  }
}

