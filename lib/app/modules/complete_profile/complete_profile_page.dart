import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/complete_profile/components/list_programs_column_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'complete_profile_controller.dart';

class CompleteProfilePage extends StatefulWidget {

  @override
  _CompleteProfilePageState createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends ModularState<CompleteProfilePage, CompleteProfileController> {


  UserMatchModel user = UserMatchModel(atividades:
  [
    Atividade(atividade: "Redes Sociais"),
    Atividade(atividade: "Redes Sociais"),
    Atividade(atividade: "Redes Sociais"),
    Atividade(atividade: "Redes Sociais"),
    Atividade(atividade: "Redes Sociais")
  ]);

  @override
  Widget build(BuildContext context) {
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
                    height: 144,
                    child: Stack(
                      children: [
                        Container(
                        width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,),
                        Positioned(
                          top: 0,left: 0,right: 0,
                          child: Container(
                            height: 128,
                            decoration: BoxDecoration(
                              color: KPinkColor,
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
                                  onPressed: () {},
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 12),
                                  child: Column(
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "Juliana L.",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: "Montserrat Bold",
                                              color: KBlackColor),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Container(
                                          child: Text(
                                            "Interesse: ",
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
                                          "Estudante 1º a 8º semestre \nSão José dos Campos, SP",
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
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Color(0xff170C10),
                                  ),
                                  onPressed: () {},
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
                              children: user.atividades.map((e) => ListProgramsColumnWidget(title: e.atividade,)).toList(),),
                          ),
                          SizedBox(height: 32,),
                          Text("Sobre Juliana",style: TextStyle(color: Color(0xFF050072),fontFamily: "Montserrat Bold",fontSize:15),),
                          SizedBox(height: 11,),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",style: TextStyle(color: Color(0xFF050072),fontFamily: "Montserrat Regular",fontSize:14),),
                          SizedBox(height: MediaQuery.of(context).size.height *0.15,)
                        ],
                      ))],
              ),
            ),
            Positioned(
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
                              navigation: (){},
                              disableColor: KButtonLightColor,
                              disableTextColor:KButtonLightTextColor,
                              text: "QUERO APADRINHAR!",
                              color: KpinkColor,
                              textColor: Colors.white,
                              highLightColor: KBlueTextColor,
                              elevation: 0.00)
                      ),
                    ],alignment: Alignment.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
