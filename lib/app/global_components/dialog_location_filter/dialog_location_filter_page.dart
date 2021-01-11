import 'dart:ui';

import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/modules/home/componentes/location_autocomplete_filter_widget.dart';
import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'dialog_location_filter_controller.dart';


class LocationFilterDialog extends StatelessWidget {

  final DialogLocationFilterController controller;

  final String title = "Editar localização";
  final GlobalKey<AutoCompleteTextFieldState<String>> keyState = GlobalKey();
  final GlobalKey<AutoCompleteTextFieldState<String>> keyCity = GlobalKey();

  LocationFilterDialog({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Card(
              margin: EdgeInsets.all(0),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Text(
                          title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Montserrat Bold"),
                        )),
                    Theme(
                      data: ThemeData(primaryColor:Color(0xFF050072)),
                      child: LocationAutocompleteFilterWidget(
                        element: Color(0xFF050072),
                        icon: ImageIcon(AssetImage("assets/images/search-interface-symbol (1).png"),color: Color(0xFF050072),),
                        onChanged: (value){},
                        focusChanged:controller.changeButtonActivate,
                        textSubmit: controller.changeState,
                        suggestion: controller.ufs.map((e) => e.nome).toList(),
                        keyText: keyState,
                        controller: TextEditingController(text: controller.state),
                        hintText: "Estado",
                        contentStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: "Montserrat Regular",
                            color: Color(0xFF050072)),
                      ),
                    ),
                    SizedBox(height: 24),
                    StreamBuilder<List<CityModel>>(
                        stream: controller.cities,
                        builder: (context, snapshot) {
                          if(snapshot.hasData && snapshot.connectionState==ConnectionState.done) {
                            return Theme(
                              data: ThemeData(primaryColor: Color(0xFFB2B2B2)),
                              child: LocationAutocompleteFilterWidget(
                                element: Color(0xFFB2B2B2),
                                icon: ImageIcon(AssetImage(
                                    "assets/images/search-interface-symbol (1).png"),
                                  color: Color(0xFFB2B2B2),),
                                onChanged: (value){},
                                focusChanged:controller.changeButtonActivate,
                                textSubmit:controller.changeCity,
                                suggestion: snapshot.data.map((e) => e.nome)
                                    .toList(),
                                keyText: keyCity,
                                controller: TextEditingController(
                                    text: controller.city),
                                hintText: "Cidade",
                                contentStyle: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Montserrat Bold",
                                    color: Color(0xFF666666)),
                              ),
                            );
                          }
                          return Theme(
                            data: ThemeData(primaryColor: Color(0xFFB2B2B2)),
                            child: TextField(
                                autofocus: false,
                                textAlignVertical: TextAlignVertical.center,
                                controller: TextEditingController(
                                    text: controller.city),
                                readOnly: true,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Montserrat Bold",
                                    color: Color(0xFF666666)),
                                decoration: InputDecoration(
                                  hintText: "Cidade",
                                  contentPadding: EdgeInsets.only(left: 7),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: ImageIcon(AssetImage(
                                        "assets/images/search-interface-symbol (1).png"),
                                      color: Color(0xFFB2B2B2),),
                                  ),
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Montserrat Bold",
                                      color: Color(0xFF666666)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFB2B2B2)),
                                  ),
                                )
                            ),
                          );
                        }
                    ),
                    StreamBuilder<List<CityModel>>(
                      stream:  controller.cities,
                      builder: (context, snapshot) {
                        print(controller.buttonActivate);
                        return Container(
                          margin: EdgeInsets.only(bottom: 40,top: 24),
                          child: Container(
                              margin: EdgeInsets.only(top: 15),
                              height: 56,
                              width: MediaQuery.of(context).size.width *0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: RaisedButton(
                                onPressed: controller.checkValidate(snapshot.data) && controller.buttonActivate?
                                    (){
                                  controller.loadFilter();
                                }:null,
                                color: Color(0xff6259B2),
                                shape: StadiumBorder(),
                                child: FittedBox(child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 17,bottom: 17,
                                  ),
                                  child: Text("APLICAR",style: TextStyle(color: Colors.white,fontFamily: "Montserrat Bold",fontSize: 18),),
                                )),
                              )
                          ),
                        );
                      }
                    )
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