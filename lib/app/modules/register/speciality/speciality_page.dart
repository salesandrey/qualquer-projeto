import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import '../register_controller.dart';

class SpecialityPage extends StatefulWidget {

  final String title;

  const SpecialityPage({Key key, this.title}) : super(key: key);

  @override
  _SpecialityPageState createState() => _SpecialityPageState(title);
}

class _SpecialityPageState extends State<SpecialityPage> {

  final String title;

  _SpecialityPageState(this.title);

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
                ),
                Expanded(
                  flex: 1,
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
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 24,
                              color: KBlueTextColor),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Escolha a especialidade que melhor define sua atuação",
                          style:
                          TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: TextField(
                            onChanged: controller.changeSpeciality,
                            decoration: InputDecoration(
                              labelText: "Digite sua especialidade",
                              suffixIcon: Icon(Icons.search),
                              hintStyle: TextStyle(fontFamily: "Montserrat Bold",color: Colors.black),
                              labelStyle: TextStyle(fontFamily: "Montserrat Regular",fontSize: 18,
                                color: KGreyColor,
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: KGreyColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: KBlueTextColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                          if(RegisterValidateViewModel().validateSpeciality(controller)){
                            Modular.to.pushNamed("/Programs");
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
