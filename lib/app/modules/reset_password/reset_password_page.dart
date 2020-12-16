import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/reset_password/viewmodel/validate_reset_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'reset_password_controller.dart';

class ResetPasswordPage extends StatefulWidget {

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  //use 'controller' variable to access controller

  FocusNode emailNode;

  @override
  void initState() {
    emailNode = new FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ResetPasswordController>(context);
    return Observer(builder: (context){
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
                              "Esqueceu a senha?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 24,
                                  color: KBlueTextColor),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Sem problemas! Digite aqui embaixo o e-mail que deixou cadastrado aqui no app:",
                              textAlign:TextAlign.left,
                              style:
                              TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                            ),
                            SizedBox(height: 83,),
                            Container(
                              child: TextField(
                                onChanged: controller.changeEmail,
                                style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold",fontSize: 18),
                                focusNode: emailNode,

                                onTap: (){
                                  emailNode.requestFocus();
                                  setState(() {});
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusColor: Color(0xFF050072),
                                  errorStyle: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular"),
                                  labelText: "E-mail cadastrado",
                                  errorText: controller.emailValidator? controller.emailFeedBack:null,
                                  labelStyle: TextStyle(fontFamily: "Montserrat Regular", color: emailNode.hasFocus ? Color(0xFF050072):KgreyColor,fontSize: 18,),
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

                    ],
                  ),
                ),
                Positioned(
                  bottom: 40,left: 40,right: 40,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonConfirmWidget(
                            navigation: controller.email=="" || controller.email.length < 5?
                            null : (){
                              ValidateResetViewModel().validateEmail(controller);
                              setState(() {});
                              if(!controller.emailValidator){
                                Modular.to.pushNamed("/CheckEmailReset");
                              }
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
