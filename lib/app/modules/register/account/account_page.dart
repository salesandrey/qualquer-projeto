import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
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

  FocusNode email;
  FocusNode password;
  bool show = true;


  @override
  void initState() {
    email = FocusNode();
    password = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

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
                        "Oi, ${controller.username.split(" ")[0]}!",
                        style: TextStyle(
                            fontFamily: "Montserrat Bold",
                            fontSize: 24,
                            color: KBlueTextColor),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Estamos felizes por você estar aqui",
                        style:
                        TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: TextField(
                            onChanged: controller.changeEmail,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold"),
                            focusNode: email,
                            onTap: (){
                              email.requestFocus();
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              labelText: "Digite seu e-mail",
                              errorText: controller.emailValidator? controller.emailFeedBack:null,
                              errorStyle: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular"),
                              hintStyle: TextStyle(fontFamily: "Montserrat Bold",color: Colors.black),
                              labelStyle: TextStyle(fontFamily: "Montserrat Regular",fontSize: 18, color: email.hasFocus?controller.passwordValidator?Colors.redAccent:Color(0xFF050072):KgreyColor,
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
                            style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold"),
                            obscureText: show,
                            focusNode: password,
                            onTap: (){
                              password.requestFocus();
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              labelText: "Crie uma senha",
                              suffixIcon:
                              password.hasFocus?
                              IconButton(onPressed: (){show = !show; setState(() {});},
                                icon: Image(
                                    image: show ? AssetImage("assets/images/eye_login.png") : AssetImage("assets/images/eye_open_login.png"),
                                    height: 23,
                                    width: 23,
                                    color: controller.passwordValidator? Colors.redAccent:Colors.black),):null,
                              errorText: controller.passwordValidator? controller.passwordFeedBack:null,
                              errorStyle: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular"),
                              hintStyle: TextStyle(fontFamily: "Montserrat Bold",color: Colors.black),
                              labelStyle: TextStyle(fontFamily: "Montserrat Regular",fontSize: 18,
                                color: password.hasFocus?controller.passwordValidator?Colors.redAccent:Color(0xFF050072):KgreyColor,
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
                    padding: const EdgeInsets.only(left: 40,right: 40,bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonConfirmWidget(
                            navigation: controller.email== "" || controller.password ==""?
                            null : (){
                              RegisterValidateViewModel().validateAccount(controller);
                              if(!controller.emailValidator && !controller.passwordValidator) {
                                Modular.to.pushNamed("/CheckEmail");
                              }
                              setState(() {});
                            },
                            disableColor: KButtonLightColor,
                            disableTextColor:KButtonLightTextColor,
                            text: "CONTINUAR",
                            color: Color(0xFF6259B2),
                            textColor: Colors.white,
                            highLightColor: KBlueTextColor,
                            elevation: 0.00)

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
