import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/autocomplete_update_component_widget.dart';
import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';


class AutoCompleteUpdateWidget extends StatelessWidget {


  final GlobalKey<AutoCompleteTextFieldState<String>> keyState = GlobalKey();
  final GlobalKey<AutoCompleteTextFieldState<String>> keyCity = GlobalKey();
  final Function changeState;
  final Function changeCity;
  final TextEditingController currentState;
  final TextEditingController currentCity;
  final Stream <List<CityModel>> cities;
  final List<UfModel> states;

  AutoCompleteUpdateWidget({Key key,
    this.currentState, this.currentCity,
    @required this.cities,@required this.states,
    @required this.changeState,@required this.changeCity}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sua localização",
            style: TextStyle(
                fontFamily: "Montserrat Bold",
                fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Theme(
              data: ThemeData(primaryColor: Color(0xFF050072)),
              child: Container(
                  child: AutoCompleteUpdateComponentWidget(
                    hintText: "Estado",
                    hintStyle: TextStyle(fontFamily: "Montserrat Regular",
                        color: Color(0xFF050072),
                        fontSize: 18),
                    contentStyle: TextStyle(fontFamily: "Montserrat Regular",
                        color: Color(0xFF050072),
                        fontSize: 18),
                    element: Color(0xFF050072),
                    controller: currentState,
                    suggestion: states.map((e) => e.nome).toList(),
                    textSubmit: changeState,
                    onChanged: (value) {},
                    keyText: keyState,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: StreamBuilder<List<CityModel>>(
              stream: cities,
              builder: (context, snapshot) {
                if(snapshot.hasData && snapshot.connectionState==ConnectionState.done) {
                  return Theme(
                    data: ThemeData(primaryColor: Color(0xFFB2B2B2)),
                    child: Container(
                        child: AutoCompleteUpdateComponentWidget(
                          hintText: "Cidade",
                          hintStyle: TextStyle(fontFamily: "Montserrat Regular",
                              color: Color(0xFFB2B2B2),
                              fontSize: 18),
                          contentStyle: TextStyle(
                              fontFamily: "Montserrat Regular",
                              color: Color(0xFFB2B2B2),
                              fontSize: 18),
                          element: Color(0xFFB2B2B2),
                          controller: currentCity,
                          suggestion: snapshot.data.map((e) => e.nome).toList(),
                          textSubmit: changeCity,
                          onChanged: (value){},
                          keyText: keyCity,
                        )),
                  );
                }
                return TextField(
                  enabled: false,
                  controller: currentCity,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 7,bottom: 8),
                  ),
                  style: TextStyle(fontFamily: "Montserrat Regular",
                      color: Color(0xFFB2B2B2),
                      fontSize: 18),
                );
              }
            ),
          ),

        ],
      ),
    );
  }
}
