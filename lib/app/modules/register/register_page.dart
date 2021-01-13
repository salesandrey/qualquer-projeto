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

  TextEditingController istController(){
    TextEditingController insta = TextEditingController();
    insta.text = "@";
    insta.selection = TextSelection.fromPosition(TextPosition(offset: insta.text.length));
    return insta;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      final controller = Provider.of<RegisterController>(context);
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height- MediaQuery.of(context).padding.top,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LinearProgressIndicator(minHeight: 8.0,value: 0.20,
                          backgroundColor: Color(0xFFE4E2F0),
                          valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF6259B2))),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 32),
                        child: InkWell(
                          onTap: () {
                            Modular.to.pop();
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios,
                                color: Color(0xFF050072),
                                size: 18,
                              ),
                              Text('VOLTAR',
                                style: TextStyle(
                                  fontFamily: "Montserrat Regular",
                                  fontSize: 15,
                                  color: Color(0xFF050072),
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
                              "Seja bem-vindo ao app PadrinhoMed!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 24,
                                  color: KBlueTextColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.09,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextInputWidget(capitalize: TextCapitalization.words,keyboardType: TextInputType.text,function: (){setState(() {});},focusNode: username,errorText: controller.usernameFeedback,validator: controller.usernameValidator,changeText: controller.changeUsername,labelText: "Digite seu nome completo"),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text("Confira seus dados pois este é o nome que vai nos certificados",style: TextStyle(fontSize: 15,color: KgreyColor,fontFamily: "Montserrat Regular")),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.09,),
                            TextInputWidget(capitalize: TextCapitalization.none,keyboardType: TextInputType.text ,function: (){setState(() {});},controller: instagram.hasFocus? istController():null,focusNode: instagram,validator: false,changeText: controller.changeInstagram,labelText: "Qual seu instagram?"),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text("Essa informação não é obrigatória, mas ela torna mais fácil as pessoas te encontrarem aqui pelo app!",style: TextStyle(fontSize: 15,color: KgreyColor,fontFamily: "Montserrat Regular")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 40, right: 40, bottom: 40,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonConfirmWidget(
                            navigation: controller.username=="" || controller.username.length < 5?
                            null : (){
                              RegisterValidateViewModel().validateUsername(controller);
                              if(!controller.usernameValidator) {
                                controller.getUF();
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
