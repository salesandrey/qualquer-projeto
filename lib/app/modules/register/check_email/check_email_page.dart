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
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 32),
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
                Container(padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Perfeito!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Montserrat Bold",
                            fontSize: 24,
                            color: KBlueTextColor),
                      ),
                      Text(
                        "Agora cheque seu e-mail,\nque nós acabamos de enviar \num código de validação",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 72),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Código de validação",
                          style: TextStyle(color: Color(0xFF050072), fontSize: 15,fontFamily: "Montserrat Regular"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0,),
                        child: PinCodeTextField(
                          autofocus: true,
                          hideCharacter: false,
                          highlight: true,
                          defaultBorderColor: kGrey,
                          pinBoxRadius: 17,
                          pinBoxBorderWidth: 1,

                          maxLength: 4,
                          hasError: controller.pinCodeValidate,
                          onTextChanged: controller.changePinCode,
                          onDone: (text) {
                            controller.sendCodeValidation();
                            setState(() {});
                          },
                          pinBoxWidth: MediaQuery.of(context).size.width * 0.176,
                          pinBoxHeight: 89,
                          hasUnderline: false,
                          errorBorderColor: Colors.redAccent,
                          wrapAlignment: WrapAlignment.spaceBetween,
                          pinBoxDecoration:
                          ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                          pinTextStyle: TextStyle(fontSize: 32.0,fontFamily: "Montserrat Bold"),
                          pinTextAnimatedSwitcherTransition:
                          ProvidedPinBoxTextAnimation.scalingTransition,
                          pinTextAnimatedSwitcherDuration:
                          Duration(milliseconds: 300),
                          highlightAnimationEndColor: Colors.white12,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
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
