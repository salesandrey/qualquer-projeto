import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import 'button_option_widget.dart';
import 'custom_checkbox_widget.dart';

class ActivitiesWidget extends StatefulWidget {
  @override
  _ActivitiesWidgetState createState() => _ActivitiesWidgetState();
}

class _ActivitiesWidgetState extends State<ActivitiesWidget> {

  final Map<String,String> iconText = {
    "Redes Sociais":"Post para \nredes sociais",
    "Casos e Aulas":"Discussão de caso \nclínico e aula",
    "Trabalho Científico":"Trabalho\nCientífico",
    "Rotina Médica":"Acompanhamento \nrotina médico",
    "Mentoria Carreira":"Mentoria sobre \nCarreira Médica"
  };

  final Map<String,String> iconType  = {
    "Redes Sociais":"assets/images/share.png",
    "Casos e Aulas":"assets/images/speech-bubble.png",
    "Trabalho Científico":"assets/images/chemistry.png",
    "Rotina Médica":"assets/images/first-aid-kit.png",
    "Mentoria Carreira":"assets/images/target.png"
  };

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Observer(builder: (_){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 25, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Agora pra fechar…",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: "Montserrat Bold",
                      fontSize: 24,
                      color: Color(0xFF050072)),
                ),
                SizedBox(
                  height: 4,
                ),
                RichText(text: TextSpan(style: TextStyle(fontFamily: "Montserrat Regular",fontSize: 18,color:KGreyColor),
                    children: [
                      TextSpan(text: "Selecione "),
                      TextSpan(text: "todos ",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 18,color:KGreyColor)),
                      TextSpan(text: "os programas \nque gostaria de participar" )
                    ]),),
              ],
            ),
          ),
          CustomCheckBox(
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt lorem in arcu dignissim vehicula vitae sit amet nibh. Curabitur eget eros ullamcorper, dictum mauris eget, scelerisque ipsum. Sed et justo fermentum.",
            imagePath: iconType["Redes Sociais"],
            title: iconText["Redes Sociais"],
            changeFunction: ()
            {
              if(controller.activities.contains("Posts para Redes Sociais")){
                controller.removeActivities("Posts para Redes Sociais");
              }else {
                controller.addActivities("Posts para Redes Sociais");
              }},
              customBox: controller.activities.contains("Posts para Redes Sociais")?
              Container(width: 32, height: 32,
                decoration: BoxDecoration(
                    color: Color(0xFFD9D9EA),
                    borderRadius: BorderRadius.circular(5.00),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xFF707070),
                    )
                ),child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image(image: AssetImage("assets/images/check.png"),fit: BoxFit.contain,),
                ),
              ): Container(width: 32, height: 32, decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.00),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070)))),
            border: controller.activities.contains("Posts para Redes Sociais")? Color(0xFF050072):Colors.white,
          ),
          SizedBox(
            height: 8,
          ),
          CustomCheckBox(
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt lorem in arcu dignissim vehicula vitae sit amet nibh. Curabitur eget eros ullamcorper, dictum mauris eget, scelerisque ipsum. Sed et justo fermentum.",
            imagePath: iconType["Casos e Aulas"],
            title: iconText["Casos e Aulas"],
            changeFunction: ()
            {
              if(controller.activities.contains("Discussão de Casos Clínicos e Aulas")){
                controller.removeActivities("Discussão de Casos Clínicos e Aulas");
              }else {
                controller.addActivities("Discussão de Casos Clínicos e Aulas");
              }},
            customBox: controller.activities.contains("Discussão de Casos Clínicos e Aulas")?
            Container(width: 32, height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9EA),
                  borderRadius: BorderRadius.circular(5.00),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070),
                  )
              ),child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image(image: AssetImage("assets/images/check.png"),fit: BoxFit.contain,),
              ),
            ): Container(width: 32, height: 32, decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.00),
                border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070)))),
            border: controller.activities.contains("Discussão de Casos Clínicos e Aulas")? Color(0xFF050072):Colors.white,
          ),
          SizedBox(
            height: 8,
          ),
          CustomCheckBox(
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt lorem in arcu dignissim vehicula vitae sit amet nibh. Curabitur eget eros ullamcorper, dictum mauris eget, scelerisque ipsum. Sed et justo fermentum.",
            imagePath: iconType["Trabalho Científico"],
            title: iconText["Trabalho Científico"],
            changeFunction: ()
            {
              if(controller.activities.contains("Trabalhos Científicos")){
                controller.removeActivities("Trabalhos Científicos");
              }else {
                controller.addActivities("Trabalhos Científicos");
              }},
            customBox: controller.activities.contains("Trabalhos Científicos")?
            Container(width: 32, height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9EA),
                  borderRadius: BorderRadius.circular(5.00),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070),
                  )
              ),child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image(image: AssetImage("assets/images/check.png"),fit: BoxFit.contain,),
              ),
            ): Container(width: 32, height: 32, decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.00),
                border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070)))),
            border: controller.activities.contains("Trabalhos Científicos")? Color(0xFF050072):Colors.white,
          ),
          SizedBox(
            height: 8,
          ),
          CustomCheckBox(
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt lorem in arcu dignissim vehicula vitae sit amet nibh. Curabitur eget eros ullamcorper, dictum mauris eget, scelerisque ipsum. Sed et justo fermentum.",
            imagePath: iconType["Mentoria Carreira"],
            title: iconText["Mentoria Carreira"],
            changeFunction: ()
            {
              if(controller.activities.contains("Mentoria sobre Carreira Médica")){
                controller.removeActivities("Mentoria sobre Carreira Médica");
              }else {
                controller.addActivities("Mentoria sobre Carreira Médica");
              }},
            customBox: controller.activities.contains("Mentoria sobre Carreira Médica")?
            Container(width: 32, height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9EA),
                  borderRadius: BorderRadius.circular(5.00),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070),
                  )
              ),child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image(image: AssetImage("assets/images/check.png"),fit: BoxFit.contain,),
              ),
            ): Container(width: 32, height: 32, decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.00),
                border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070)))),
            border: controller.activities.contains("Mentoria sobre Carreira Médica")? Color(0xFF050072):Colors.white,
          ),
          SizedBox(
            height: 8,
          ),
          CustomCheckBox(
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt lorem in arcu dignissim vehicula vitae sit amet nibh. Curabitur eget eros ullamcorper, dictum mauris eget, scelerisque ipsum. Sed et justo fermentum.",
            imagePath: iconType["Rotina Médica"],
            title: iconText["Rotina Médica"],
            changeFunction: ()
            {
              if(controller.activities.contains("Acompanhar Rotina Médica")){
                controller.removeActivities("Acompanhar Rotina Médica");
              }else {
                controller.addActivities("Acompanhar Rotina Médica");
              }},
            customBox: controller.activities.contains("Acompanhar Rotina Médica")?
            Container(width: 32, height: 32,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9EA),
                  borderRadius: BorderRadius.circular(5.00),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070),
                  )
              ),child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image(image: AssetImage("assets/images/check.png"),fit: BoxFit.contain,),
              ),
            ): Container(width: 32, height: 32, decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.00),
                border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFF707070)))),
            border: controller.activities.contains("Acompanhar Rotina Médica")? Color(0xFF050072):Colors.white,
          ),
          SizedBox(
            height: 8,
          ),
        ],);
    });

  }
}
