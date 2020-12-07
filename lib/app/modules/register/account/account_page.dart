import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import '../register_controller.dart';


class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder: (_){
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
                        flex: 2,
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
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
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
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Oi, ${controller.username}!",
                          style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 24,
                              color: KBlueTextColor),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Estamos felizes que estão por \naqui. Vamos criar sua conta?",
                          style:
                          TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: TextField(
                            onChanged: controller.changeEmail,
                            decoration: InputDecoration(
                              labelText: "Digite seu e-mail",
                              errorText: controller.emailValidator? controller.emailFeedBack:null,
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
                        Container(
                          child: TextField(
                            onChanged: controller.changePassword,
                            decoration: InputDecoration(
                              labelText: "Crie uma senha",
                              errorText: controller.passwordValidator? controller.passwordFeedBack:null,
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
                        )
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
                          RegisterValidateViewModel().validateAccount(controller);
                          if(!controller.emailValidator && !controller.passwordValidator){
                            Modular.to.pushNamed("/CheckEmail");
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
    });
  }
}
