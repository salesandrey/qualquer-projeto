import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:provider/provider.dart';

class CheckEmailPage extends StatefulWidget {

  @override
  _CheckEmailPageState createState() => _CheckEmailPageState();
}

class _CheckEmailPageState extends State<CheckEmailPage>{

   RegisterController controller;

   @override
  void initState() {
    controller = Provider.of<RegisterController>(context,listen:false);
    controller.sendEmailCode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                        flex: 5,
                        child: Container(
                          height: 8,
                          color: KBlueColor,
                        ),
                      ),
                      Expanded(
                        flex: 5,
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
                        controller.changePinCodeFeedback("");
                        controller.changePinCodeValidate(false);
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
                    padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Perfeito!",
                          style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 24,
                              color: KBlueTextColor),
                        ),
                        Text(
                          "Agora cheque seu e-mail,\nque nós acabamos de enviar \num código de validação",
                          style: TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Código de validação",
                            style: TextStyle(color: KBlueTextColor, fontSize: 15,fontFamily: "Montserrat Regular"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              PinCodeTextField(
                                autofocus: true,
                                hideCharacter: false,
                                highlight: true,
                                highlightColor: Colors.blue,
                                defaultBorderColor: Colors.black,
                                hasTextBorderColor: Colors.green,
                                pinBoxRadius: 10,
                                pinBoxBorderWidth: 0.7,

                                maxLength: 4,
                                onTextChanged: controller.changePinCode,
                                onDone: (text) {
                                  controller.sendCodeValidation();
                                  setState(() {});
                                },
                                pinBoxWidth: 64,
                                pinBoxHeight: 81,
                                hasUnderline: false,
                                wrapAlignment: WrapAlignment.spaceAround,
                                pinBoxDecoration:
                                ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                                pinTextStyle: TextStyle(fontSize: 22.0),
                                pinTextAnimatedSwitcherTransition:
                                ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                                pinTextAnimatedSwitcherDuration:
                                Duration(milliseconds: 300),
//                    highlightAnimation: true,
                                highlightAnimationBeginColor: Colors.black,
                                highlightAnimationEndColor: Colors.white12,
                                keyboardType: TextInputType.number,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: Visibility(
                            child: Text(
                              controller.pinCodeFeedback,
                            ),
                            visible: controller.pinCodeValidate,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Não recebeu o e-mail?",
                          style: TextStyle(fontSize: 16, color: KGreyColor,fontFamily: "Montserrat Regular"),
                        ),
                        SizedBox(height: 4,),
                        InkWell(
                          onTap: () {
                            controller.sendEmailCode();
                          },
                          child: Text(
                            "Clique aqui",
                            style: TextStyle(
                                fontSize: 16,
                                color: KBlueTextColor,
                                fontFamily: "Montserrat Bold"),
                          ),
                        ),
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
