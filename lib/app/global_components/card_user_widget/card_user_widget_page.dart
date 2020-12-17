import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardUserWidget extends StatelessWidget {

  final CardUserWidgetController controller;

  final Map<String,Color> colorCard = {
    "Estudante (1º ao 8º semestre)":Color(0xFFED7AA0),
    "Interno (9º ao 12º semestre)":Color(0xFFA652B7),
    "Médico Graduado":Color(0xFF6AA4E8),
    "Em Especialização / Residente":Color(0xFF3FBAA3),
    "Médico Especialista":Color(0xFFFFBE69)
  };

  CardUserWidget({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 91,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: KSecondaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                color: colorCard[controller.user.graduacao],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Modular.to.pushNamed("/CompleteProfile",arguments: [controller.user,controller.id,false,controller.typeSearch]);
                                },
                                child: Text(
                                  "${controller.user.nome.split(" ").first} ${controller.user.nome.split(" ").last}",
                                  style: TextStyle(
                                    fontFamily: "Montserrat Bold",
                                    fontSize: 18,
                                    color: KBlackColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5,),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: controller.changeLike,
                          child: controller.like
                              ? Icon(Icons.favorite, color: Color(0xff6259B2))
                              : Container(width: 18,height: 16,),
                        ),
                      ],
                    ),
                    Text(
                      "Interesse: ${controller.user.interesses[0].especialidade}",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Montserrat Regular",
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      controller.user.graduacao,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Montserrat Regular",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

