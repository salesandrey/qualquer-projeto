import 'package:PadrinhoMED/app/modules/profile/edit_profile/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';

class LocationEditWidget extends StatefulWidget {
  @override
  _LocationEditWidgetState createState() => _LocationEditWidgetState();
}

class _LocationEditWidgetState extends ModularState<LocationEditWidget,EditProfileController> {


  final TextEditingController city = TextEditingController();



  List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(
      child: Text("Acre", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Acre",),
    DropdownMenuItem(
      child: Text("Alagoas", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Alagoas",),
    DropdownMenuItem(
      child: Text("Amapá", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Amapá",),
    DropdownMenuItem(
      child: Text("Amazonas", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Amazonas",),
    DropdownMenuItem(
      child: Text("Bahia", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Bahia",),
    DropdownMenuItem(
      child: Text("Ceará", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Ceará",),
    DropdownMenuItem(
      child: Text("Distrito Federal", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Distrito Federal",),
    DropdownMenuItem(
      child: Text("Espírito Santo", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Espírito Santo",),
    DropdownMenuItem(
      child: Text("Goiás", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Goiás",),
    DropdownMenuItem(
      child: Text("Maranhão", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Maranhão",),
    DropdownMenuItem(
      child: Text("Mato Grosso", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Mato Grosso",),
    DropdownMenuItem(
      child: Text("Mato Grosso do Sul", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Mato Grosso do Sul",),
    DropdownMenuItem(
      child: Text("Minas Gerais", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Minas Gerais",),
    DropdownMenuItem(
      child: Text("Pará", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Pará",),
    DropdownMenuItem(
      child: Text("Paraíba", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Paraíba",),
    DropdownMenuItem(
      child: Text("Paraná", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Paraná",),
    DropdownMenuItem(
      child: Text("Pernambuco", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Pernambuco",),
    DropdownMenuItem(
      child: Text("Piauí", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Piauí",),
    DropdownMenuItem(
      child: Text("Rio de Janeiro", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Rio de Janeiro",),
    DropdownMenuItem(
      child: Text("Rio Grande do Norte", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Rio Grande do Norte",),
    DropdownMenuItem(
      child: Text("Rio Grande do Sul", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Rio Grande do Sul",),
    DropdownMenuItem(
      child: Text("Rondônia", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Rondônia",),
    DropdownMenuItem(
      child: Text("Roraima", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Roraima",),
    DropdownMenuItem(
      child: Text("Santa Catarina", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Santa Catarina",),
    DropdownMenuItem(
      child: Text("São Paulo", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "São Paulo",),
    DropdownMenuItem(
      child: Text("Sergipe", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Sergipe",),
    DropdownMenuItem(
      child: Text("Tocantins", style: TextStyle(
          color: KBlackLightTextColor, fontFamily: "Montserrat Regular")),
      value: "Tocantins",),
  ];

  @override
  void initState() {
    city.text = "Macapá";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    child: Text(
                      "Onde você mora?",
                      style: TextStyle(
                          fontFamily: "Montserrat Bold",
                          fontSize: 15,
                          color: KBlackLightTextColor),
                    ),
                  ),
                ),
                Container(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: controller.locationState,
                    underline: Container(
                      height: 1,
                      color: KGreyColor,
                    ),
                    items: items,

                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    onChanged: controller.changeLocationState,
                    elevation: 0,
                    hint: Text("Selecione o estado",
                      style: TextStyle(fontFamily: "Montserrat Regular",
                          fontSize: 18,
                          color: Color(0xFF050072)),),),),
                Container(
                    child: TextField(
                        controller:city,
                        onChanged: controller.changeLocationCity,
                        decoration: InputDecoration(
                            hintText: "E agora, sua cidade",
                            hintStyle: TextStyle(color: KGreyColor,
                                fontFamily: "Montserrat Regular",
                                fontSize: 18),
                            labelStyle: TextStyle(color: KBlueTextColor,fontFamily: "Montserrat Regular"),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: KGreyColor)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: KBlueTextColor)))))
              ]));
    });
  }
}