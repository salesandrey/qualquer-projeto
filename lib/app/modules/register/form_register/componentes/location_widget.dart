import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/modules/register/components/autocomplete_text_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LocationWidget extends StatelessWidget {

  final GlobalKey<AutoCompleteTextFieldState<String>> keyStringState;
  final GlobalKey<AutoCompleteTextFieldState<String>> keyStringCity;
  final Function changeCity;
  final Function changeState;
  final Function submitState;
  final Function submitCity;
  final Stream<List<CityModel>> streamCity;
  final List<String> states;
  final String label1;
  final String label2;
  final Icon icon1;
  final Icon icon2;

  LocationWidget({Key key,
    this.keyStringState,
    this.keyStringCity,
    this.label1, this.label2, this.icon1, this.icon2,
    this.changeCity, this.changeState,
    this.submitState, this.submitCity,
    this.streamCity, this.states}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, bottom: 15),
                child: Text(
                  "Sua localização",
                  style: TextStyle(
                      fontFamily: "Montserrat Bold",
                      fontSize: 18,
                      color: KBlackLightTextColor),
                ),
              ),
              Theme(
                data: ThemeData(primaryColor:Color(0xFF050072)),
                child: Container(
                    child: AutoCompleteTextWidget(
                      icon: icon1,
                      labelText: label1,
                      element: Color(0xFF050072),
                      suggestion: states,
                      textSubmit: submitState,
                      onChanged: changeState,
                      keyText: keyStringState,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Theme(
                  data:ThemeData(primaryColor:Color(0xFF050072)),
                  child: StreamBuilder<List<CityModel>>(
                      stream: streamCity,
                      builder: (context, snapshot) {
                        if (snapshot.hasData && snapshot.connectionState==ConnectionState.done) {
                          return Container(
                              child: AutoCompleteTextWidget(
                                  icon: icon2,
                                  labelText: label2,
                                  element: kGrey,
                                  suggestion: snapshot.data.map((e) => e.nome).toList(),
                                  textSubmit: changeCity,
                                  onChanged: submitCity,
                                  keyText: keyStringCity)
                          );
                        }
                        return TextField(textAlignVertical: TextAlignVertical.center,
                          enabled: false,
                          decoration: InputDecoration(hintText: "Cidade",hintStyle: TextStyle(fontSize: 18,fontFamily: "Montserrat Regular",color: Colors.grey)),);
                      }
                  ),
                ),
              )
            ]));
  }
}

