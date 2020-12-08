import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/login/viewmodel/login_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  FocusNode emailNode;
  FocusNode passwordNode;
  bool show = true;

  @override
  void initState() {
    emailNode = new FocusNode();
    passwordNode = new FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: KPrimaryColor,
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage('assets/images/VerticalColor.png'),
                              width: MediaQuery.of(context).size.width*0.55,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: TextField(
                              onChanged: controller.changeEmail,
                              focusNode: emailNode,
                              onTap: (){
                                emailNode.requestFocus();
                                setState(() {});
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                focusColor: Color(0xFF050072),
                                labelText: "E-mail",
                                errorText: controller.emailValidator? controller.emailFeedback:null,
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
                          Container(
                            child: TextField(
                              onChanged: controller.changePassword,

                              focusNode: passwordNode,
                              onTap: (){
                                  passwordNode.requestFocus();
                                  setState(() {});
                              },
                              buildCounter: (BuildContext context,{int currentLength, int maxLength, bool isFocused }){
                                if(passwordNode.hasFocus)
                                  return Text("Esqueceu?",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,color:Color(0xFF6259B2)));
                                else
                                  return null;
                              },
                              obscureText: show,
                              decoration: InputDecoration(
                                focusColor: Color(0xFF050072),
                                labelText: "Senha",
                                suffixIcon:
                                passwordNode.hasFocus?
                                IconButton(onPressed: (){show = !show; setState(() {});},
                                  icon: Image(
                                    image: show ? AssetImage("assets/images/eye_login.png") : AssetImage("assets/images/eye_open_login.png"),
                                    height: 23,
                                    width: 23,
                                    color: controller.passwordValidator? Colors.redAccent:Colors.black),):null,
                                errorText: controller.passwordValidator? "Senha Incorreta : (":null,
                                errorStyle: TextStyle(fontSize: 15,fontFamily: "Montserrat Regular"),
                                hintStyle: TextStyle(fontSize: 18,fontFamily: "Montserrat Regular",color: KBlueTextColor,),
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
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ButtonWidget(color: KBlueColor,titleColor: KSecondaryColor, title:"ENTRAR",
                            navigation: () async{
                              LoginValidateViewModel().loginValidate(controller);
                              if(!controller.emailValidator && !controller.passwordValidator) {
                                controller.changeLoading(true);
                                await controller.loginAccount();
                                setState(() {});
                                controller.changeLoading(false);
                              }
                              setState(() {});
                            },),
                          InkWell(
                            onTap: (){
                              Modular.to.pushNamed("/Register");
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Criar nova conta",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Montserrat Bold",
                                  color: KBlueTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
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
        ),
      );
    });

  }
}

class Input extends StatefulWidget {
  Input({
    this.lbltext,
    this.suficon,
    this.hinttext,
  });

  final lbltext;
  final suficon;
  final hinttext;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.lbltext,
          hintText: widget.hinttext,
          hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
          suffixIcon: widget.suficon,
          labelStyle: TextStyle(
            color: KBlueTextColor,
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
    );
  }
}

