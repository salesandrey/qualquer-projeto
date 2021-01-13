import 'package:PadrinhoMED/app/modules/profile/components/box_option_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/components/logout_dialog_widget.dart';
import 'package:PadrinhoMED/app/modules/telas_temporarias/certificados4.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.getName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24,right: 24),
                    height: 120,
                    color: Kdeep_PurpleAccentColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Oi, ${controller.name.split(" ")[0]}!",style: TextStyle(color: KSecondaryColor,fontFamily: "Montserrat Bold",fontSize: 24),),
                              SizedBox(height: 10,),
                              Text("O que você procura por aqui?",style: TextStyle(fontSize: 15,color: KSecondaryColor,fontFamily:"MontSerrat Regular"),),
                            ],
                          ),
                        ),
                        Container(
                          child: FittedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: KSecondaryColor.withOpacity(0.2),
                              ),
                              height: 60,
                              width: 60,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(context: context,
                                        builder: (_) => LogoutDialogWidget());
                                    },
                                    child: Container(
                                      child: Image(
                                        image: AssetImage('assets/images/logout.png'),
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BoxOptionWidget(iconImage: 'assets/images/49.png',text: "Meus Dados",navigation: (){
                    Modular.to.pushNamed("/EditProfile");
                  }),//Modular.to.pushNamed("/EditProfile");},),
                  BoxOptionWidget(iconImage: 'assets/images/48.png',text: "Meus Certificados", navigation: (){
                    if(controller.premium){

                    }else{
                      Modular.to.pushNamed("/Monkey");
                    }
                  },),
                  BoxOptionWidget(iconImage: 'assets/images/50.png',text: "Configurações",navigation: (){
                    Modular.to.pushNamed("/Configuration");
                  },),
                  BoxOptionWidget(iconImage: 'assets/images/85.png',text: "Conta Premium",navigation: (){
                    Modular.to.pushNamed("/Premium");
                  },),
                  BoxOptionWidget(iconImage: 'assets/images/51.png',text: "Ajuda",navigation: (){
                    Modular.to.pushNamed("/Tutorial",arguments: "Navigator");
                  },),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
