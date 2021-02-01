import 'package:PadrinhoMED/app/modules/login/componentes/button_widget.dart';
import 'package:PadrinhoMED/app/modules/login/viewmodel/login_validate_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_typeahead/cupertino_flutter_typeahead.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'login_controller.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> with TickerProviderStateMixin {



  FocusNode emailNode;
  FocusNode passwordNode;
  bool show = true;
  AnimationController _animationController;
  var animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 6))..forward();
    animation = Tween<double>(end: 1.0,begin: 3.0).animate(_animationController);
    emailNode = new FocusNode();
    passwordNode = new FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Observer(builder: (context){
      return ModalProgressHUD(inAsyncCall: controller.loading,
        child: WillPopScope(
          onWillPop: ()async{
            return false;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: KPrimaryColor,
            body: AnimatedBuilder(
              animation: animation,
              builder: (context, snapshot) {
                return Transform(
                  alignment: FractionalOffset.topCenter,
                  transform: Matrix4.diagonal3(Vector3(animation.value * 1.0,animation.value * 1.0,animation.value * 1.0)),
                  child: SafeArea(
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
                                      style: TextStyle(color: KBlackLightTextColor,fontFamily: "Montserrat Bold",fontSize: 18),
                                      focusNode: passwordNode,
                                      onTap: (){
                                          passwordNode.requestFocus();
                                          setState(() {});
                                      },
                                      buildCounter: (BuildContext context,{int currentLength, int maxLength, bool isFocused }){
                                        if(passwordNode.hasFocus)
                                          return InkWell(onTap: (){
                                            Modular.to.pushNamed("/ResetPassword");
                                          },child: Text("Esqueceu?",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,color:Color(0xFF6259B2))));
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
                );
              }
            ),
          ),
        ),
      );
    });

  }
}

