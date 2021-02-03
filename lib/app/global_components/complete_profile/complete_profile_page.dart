import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'complete_profile_controller.dart';
import 'components/list_programs_column_widget.dart';



class CompleteProfilePage extends StatelessWidget {

  final CompleteProfileController controller;


  CompleteProfilePage({Key key, this.controller}) : super(key: key);

  final Map<String,Color> colorCard = {
    "Estudante (1º ao 8º semestre)":Color(0xFFED7AA0),
    "Internato (9º ao 12º semestre)":Color(0xFFA652B7),
    "Médico Generalista":Color(0xFF6AA4E8),
    "Em Especialização / Residente":Color(0xFF3FBAA3),
    "Médico Especialista":Color(0xFFFFBE69)
  };


  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: Stack(alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width ,
                child: Column(
                  children: [
                    Container(
                      height: controller.like? 160:144,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,),
                          Positioned(
                            top: 0,left: 0,right: 0,
                            child: Container(
                              height: controller.like? 144:128,
                              decoration: BoxDecoration(
                                color: colorCard[controller.user.graduacao],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_back, size: 23,
                                      color: Color(0xff170C10),
                                    ),
                                    onPressed: () {
                                      if(Modular.to.canPop()) {
                                        Modular.to.pop(true);
                                      }else{
                                        Modular.to.pushReplacementNamed("/Navigator",arguments: [0,0]);
                                      }
                                    },
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 16),
                                    child: Column(
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            "${controller.user.nome.split(" ").first} ${controller.user.nome.split(" ").last.substring(0,1)}.",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontFamily: "Montserrat Bold",
                                                color: KBlackColor),
                                          ),
                                        ),
                                        FittedBox(
                                          child: Container(
                                            child: Text(
                                              controller.user.graduacao=="Em Especialização / Residente" || controller.user.graduacao=="Médico Especialista"?
                                               "${controller.user.especialidade} " : "Interesse: ${controller.user.especialidade} ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: "Montserrat Bold",
                                                  color: KBlackColor),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.7,
                                          child: Text(
                                            controller.like? "${controller.user.graduacao}\n${controller.user.cidade},${controller.user.estado}": controller.user.graduacao,
                                            style:
                                            TextStyle(fontSize: 14, color: KBlackColor,fontFamily: "Montserrat Regular"),
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    icon: controller.like? ImageIcon(AssetImage("assets/images/favorite_icon_line.png"),
                                      color: Color(0xff170C10),
                                    ):ImageIcon(
                                      AssetImage("assets/images/favorite_icon_outline.png"),
                                      color: Color(0xff170C10),
                                    ),
                                    onPressed: controller.changeLike,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 0,right: 0,left: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 158,
                                    height: 48,
                                    child: FlatButton(
                                      minWidth: MediaQuery.of(context).size.width*0.45,
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: Color(0xffE6E6E6),width: 2)),
                                      height: 45,
                                      color: Color(0xffE6E6E6),
                                      onPressed: (){},
                                      child:FittedBox(child: Text("E-mail",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 18,
                                        color: KGreyColor.withOpacity(0.5),
                                      ),),),
                                    ),
                                  ),
                                  SizedBox(width:  8,),
                                  Container(
                                    width: 158,
                                    height: 48,
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: Color(0xffE6E6E6),width: 2)),
                                      height: 45,
                                      color: Color(0xffE6E6E6),
                                      onPressed: (){},
                                      child: FittedBox(
                                        child: Text("Instagram",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 18,
                                          color: KGreyColor.withOpacity(0.5),
                                        ),),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.65,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                        child: ListView(
                          children: [
                            Text("Programas PadrinhoMed",style: TextStyle(color: Color(0xFF050072),fontFamily: "Montserrat Bold",fontSize:15),),
                            SizedBox(height: 4,),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: controller.user.atividades.map((e) => ListProgramsColumnWidget(title: e.atividade,)).toList(),),
                            ),
                            SizedBox(height: 32,),
                            Text("Sobre ${controller.user.nome.split(" ").first} ${controller.user.nome.split(" ").last.substring(0,1)}.",style: TextStyle(color: Color(0xFF050072),fontFamily: "Montserrat Bold",fontSize:15),),
                            SizedBox(height: 11,),
                            Text("${controller.user.sobre}",style: TextStyle(color: Color(0xFF050072),fontFamily: "Montserrat Regular",fontSize:14),),
                            SizedBox(height: MediaQuery.of(context).size.height *0.15,)
                          ],
                        ))],
                ),
              ),

                  controller.officialPatronize?
                  Positioned(
                      bottom: 0,
                      child: Container(
                        color: colorCard[controller.user.graduacao],
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text(
                              "${controller.user.nome.split(" ").first[0].toUpperCase() + controller.user.nome.split(" ").first.substring(1)} é seu ${controller.user.tipo}!",
                            style: TextStyle(color: Colors.black,fontFamily: "Montserrat Regular",fontSize: 0.035 * MediaQuery.of(context).size.width)),
                            SizedBox(width: 4),
                            InkWell(
                              onTap: (){
                                Modular.to.pushReplacementNamed("/Navigator",arguments: [3,1]);
                              },
                              child: Text(
                                  "Ver todos",
                                  style: TextStyle(decoration: TextDecoration.underline,color: Colors.black,fontFamily: "Montserrat Bold",fontSize: 0.035 * MediaQuery.of(context).size.width)),
                            ),
                        ],),
                      )) : Visibility(
                  visible: controller.user.tipo!=controller.typeSearch,
                  child: Positioned(
                    bottom: 0,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height *0.15,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.white.withOpacity(0.8), Colors.white.withOpacity(1.0)])
                                )),

                            Positioned(left: 40,right: 40,
                                child: ButtonConfirmWidget(
                                    navigation:controller.patronize? (){
                                      controller.changePatronize();
                                    } : null,
                                    disableColor: KButtonLightColor,
                                    disableTextColor:KButtonLightTextColor,
                                    text: controller.patronize?controller.typeSearch=="Padrinho"?"QUERO APADRINHAR!":"QUERO SER AFILHADO":"SOLICITAÇÃO ENVIADA",
                                    color: colorCard[controller.user.graduacao],
                                    textColor: Colors.white,
                                    highLightColor: KBlueTextColor,
                                    elevation: 0.00)
                            ),
                          ],alignment: Alignment.center,
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      );
    });

  }
}
