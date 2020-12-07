import 'package:PadrinhoMED/app/modules/profile/edit_profile/edit_profile_controller.dart';
import 'package:PadrinhoMED/app/modules/register/form_register/componentes/button_option_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

enum type { Afilhado, Padrinho }
class SearchingEditWidget extends StatefulWidget {
  @override
  _SearchingEditWidgetState createState() => _SearchingEditWidgetState();
}

class _SearchingEditWidgetState extends ModularState<SearchingEditWidget,EditProfileController> {

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10.0),
              child: Container(
                child: Text("O que você quer ser no app?",style: TextStyle(fontFamily: "Montserrat Bold",color: Color(0xFF313131),fontSize: 15)),
              ),
            ),
            Row(children: [
              Transform.scale(
                scale: 1.4,
                child: Radio(
                  activeColor: Color(0xFF0000E6),
                  value: type.Afilhado.index,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    selectedValue = 0;
                    controller.changeTypeSearch("Afilhado");
                    setState(() {});
                  },
                ),
              ),
              Text('Afilhado',style: TextStyle(fontFamily: "Montserrat Regular",color: selectedValue==0?Color(0xFF0000E6):kGrey,fontSize: 15)),
            ],),
            Row(children: [
              Transform.scale(
                scale: 1.4,
                child: Radio(
                  activeColor:Color(0xFF0000E6),
                  value: type.Padrinho.index,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    selectedValue = 1;
                    controller.changeTypeSearch("Padrinho");
                    setState(() {});
                  },
                ),
              ),
              Text('Padrinho',style: TextStyle(fontFamily: "Montserrat Regular",color: selectedValue==1?Color(0xFF0000E6):kGrey,fontSize: 15)),
            ])
          ],
        ),
      ),
    );
  }
}
