import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/reset_password/viewmodel/validate_reset_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import '../reset_password_controller.dart';

class ConfirmEmailPage extends StatefulWidget {
  @override
  _ConfirmEmailPageState createState() => _ConfirmEmailPageState();
}

class _ConfirmEmailPageState extends State<ConfirmEmailPage> {



  FocusNode passwordNode;
  FocusNode passwordConfirmNode;
  bool show = true;
  bool show2 = true;

  @override
  void initState() {
    passwordConfirmNode = new FocusNode();
    passwordNode = new FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    passwordConfirmNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ResetPasswordController>(context);
    return Observer(builder: (context){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
          backgroundColor: KPrimaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
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
                                "Boa!",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "Montserrat Bold",
                                    fontSize: 24,
                                    color: KBlueTextColor),
                              ),
                              Text(
                                "O seu e-mail foi confirmado! Vamos cadastrar uma nova senha agora, beleza?",
                                textAlign:TextAlign.left,
                                style:
                                TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                              ),
                              SizedBox(height: 72,),
                              Container(
                                child: TextField(
                                  onChanged: controller.changePassword,
                                  style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold",fontSize: 18),
                                  focusNode: passwordNode,
                                  onTap: (){
                                    passwordNode.requestFocus();
                                    setState(() {});
                                  },
                                  obscureText: show,
                                  decoration: InputDecoration(
                                    focusColor: Color(0xFF050072),
                                    labelText: "Nova senha",
                                    suffix:passwordNode.hasFocus?
                                    InkWell(onTap: (){show = !show; setState(() {});},
                                        child: Text(
                                            "MOSTRAR", style:TextStyle(fontSize: 12,fontFamily: "Montserrat Regular",color: controller.passwordValidator? Colors.redAccent:Color(0xFF050072)))):null,
                                    errorText: controller.passwordValidator? controller.passwordFeedBack:null,
                                    errorStyle: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular"),
                                    labelStyle: TextStyle(fontFamily: "Montserrat Regular",color: passwordNode.hasFocus?controller.passwordValidator?Colors.redAccent:Color(0xFF050072):KgreyColor,fontSize: 18),
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
                              SizedBox(height: 72,),
                              Container(
                                child: TextField(
                                  onChanged: controller.changePasswordConfirm,
                                  style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold",fontSize: 18),
                                  focusNode: passwordConfirmNode,
                                  onTap: (){
                                    passwordConfirmNode.requestFocus();
                                    setState(() {});
                                  },
                                  obscureText: show2,
                                  decoration: InputDecoration(
                                    focusColor: Color(0xFF050072),
                                    labelText: "Repita a nova senha",
                                    suffix:passwordConfirmNode.hasFocus?
                                    InkWell(onTap: (){show2 = !show2; setState(() {});},
                                        child: Text(
                                            "MOSTRAR", style:TextStyle(fontSize: 12,fontFamily: "Montserrat Regular",color: controller.passwordConfirmValidator? Colors.redAccent:Color(0xFF050072)))):null,
                                    errorText: controller.passwordValidator? controller.passwordConfirmFeedBack:null,
                                    errorStyle: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular"),
                                    labelStyle: TextStyle(fontFamily: "Montserrat Regular",color: passwordNode.hasFocus?controller.passwordValidator?Colors.redAccent:Color(0xFF050072):KgreyColor,fontSize: 18),
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
                              navigation: controller.passwordConfirm=="" || controller.password=="" ?
                              null : () async{
                                ValidateResetViewModel().validatePassword(controller);
                                setState(() {});
                                if(!controller.passwordConfirmValidator && !controller.passwordValidator){
                                  controller.changeLoading(true);
                                  await controller.resetPassword();
                                  setState(() {});
                                  controller.changeLoading(false);
                                }
                              },
                              disableColor: KButtonLightColor,
                              disableTextColor:KButtonLightTextColor,
                              text: "ENTRAR NO APP",
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
        ),
      );
    });
  }
}
