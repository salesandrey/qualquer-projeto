import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardUserWidget extends StatelessWidget {

  final CardUserWidgetController controller;

  final Map<String,Color> colorCard = {
    "Estudante (1º ao 8º semestre)":Color(0xFFED7AA0),
    "Internato (9º ao 12º semestre)":Color(0xFFA652B7),
    "Médico Generalista":Color(0xFF6AA4E8),
    "Em Especialização / Residente":Color(0xFF3FBAA3),
    "Médico Especialista":Color(0xFFFFBE69)
  };

  CardUserWidget({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Stack(
        children: [
          InkWell(
            onTap: (){
              Modular.to.pushReplacementNamed("/CompleteProfile",arguments: [
                controller.user,
                controller.id,
                controller.like,
                controller.typeSearch,
                controller.nameAbr,
                controller.appController,
                !controller.appController.myMatchesStore.matches.contains(controller.user.id),
                controller.appController.myRealMatchesStore.matches.contains(controller.user.id)
              ]);
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 4),
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
                          Container(
                            child: Text(
                              "${controller.user.nome.split(" ").first} ${controller.user.nome.split(" ").last.substring(0,1)}.",
                              style: TextStyle(
                                fontFamily: "Montserrat Bold",
                                fontSize: 18,
                                color: KBlackColor,
                              ),
                            ),width: MediaQuery.of(context).size.width * 0.75,
                          ),
                          Text(
                            controller.user.graduacao == "Médico Especialista" || controller.user.graduacao == "Em Especialização / Residente" ?
                            controller.user.interesses[0].especialidade:
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
            ),
          ),
          Positioned(
            top: 8,
            right: 10,
            child: InkWell(
              onTap: controller.changeLike,
              child: controller.like
                  ? Icon(Icons.favorite, color: Color(0xff6259B2))
                  : Container(width: 22,height: 22),
            ),
          ),

        ],
      );
    });
  }
}

