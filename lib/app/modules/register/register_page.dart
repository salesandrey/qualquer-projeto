import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/text_input_widget.dart';
import 'package:PadrinhoMED/app/modules/register/viewmodel/register_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  FocusNode username;
  FocusNode instagram;

  @override
  void initState() {
    username = FocusNode();
    instagram = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    username.dispose();
    instagram.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder: (context){
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
                        flex: 1,
                        child: Hero(
                          tag: "primo1",
                          child: Container(
                            height: 8,
                            color: KBlueColor,
                          ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 40),
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
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Seja bem-vindo!",
                          style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 24,
                              color: KBlueTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextInputWidget(errorText: controller.usernameFeedback,validator: controller.usernameValidator,changeText: controller.changeUsername,labelText: "Digite seu nome completo",helpText: "Este é o nome para seus certificados",),
                        TextInputWidget(validator: false,changeText: controller.changeInstagram,labelText: "Qual seu instagram?",helpText: "Essa informação não é obrigatória,mas ela torna mais fácil as pessoas te encontrarem aqui pelo app!",)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding:
                    const EdgeInsets.only(left: 40, right: 40, bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonConfirmWidget(
                            navigation: (){
                              RegisterValidateViewModel().validateUsername(controller);
                              if(!controller.usernameValidator) {
                                Modular.to.pushNamed("/Account");
                              }
                              setState(() {});
                            },
                            text: "CONTINUAR",
                            color: controller.username=="" || controller.username.length < 2?KButtonLightColor: Color(0xFF6259B2),
                            textColor: controller.username=="" || controller.username.length < 2? KButtonLightTextColor: Colors.white,
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
