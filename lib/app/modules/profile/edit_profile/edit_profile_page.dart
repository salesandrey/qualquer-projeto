import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/custom_autocompleted_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/edit_text_input_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/location_edit_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/search_edit_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/single_checkbox_options_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/single_checkbox_widget.dart';
import 'package:PadrinhoMED/app/modules/register/components/autocomplete_text_widget.dart';
import 'package:PadrinhoMED/app/utils/autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'edit_profile_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';

class EditProfilePage extends StatefulWidget {

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState
    extends ModularState<EditProfilePage, EditProfileController> {
  //use 'controller' variable to access controller

  TextEditingController username = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController instagram = TextEditingController();
  TextEditingController about = TextEditingController();
  TextEditingController speciality = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> keyStringSpeciality = new GlobalKey();

  FocusNode nameNode;
  FocusNode emailNode;
  FocusNode instagramNode;
  FocusNode aboutNode;
  bool show = true;

  @override
  void initState() {

    nameNode = FocusNode();
    emailNode = FocusNode();
    instagramNode = FocusNode();
    aboutNode = FocusNode();
    controller.addProgramsToList();


    username.text = "Andrey";
    name.text = "Andrey Sales";
    email.text = "salesandrey11@hotmail.com";
    instagram.text = "@salesandrey";
    about.text = "";
    speciality.text = "Pediatria";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder:(_){
      return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                        const EdgeInsets.only(top: 10, bottom: 15, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back_ios,
                                color: Kdeep_perpleColor,
                                size: 18,
                              ),
                              Text(
                                'VOLTAR',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Montserrat Regular",
                                  color: Kdeep_perpleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          show = !show;
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12,horizontal: 7),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: KBlueColor.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child:Image(image: show? AssetImage("assets/images/eye_login.png") : AssetImage("assets/images/eye_open_login.png"),fit: BoxFit.contain,color: Color(0xFF050072),),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Meus Dados',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat Bold",
                        color: Kdeep_perpleColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Confirme suas informações abaixo:',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Montserrat Regular",
                          color: KBlackLightTextColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          EditTextIInputWidget(labelText: "Nome e sobrenome",
                              maxLine: 1,controller: name,
                              focusNode: nameNode,isVisibility: show,
                              onChanged: controller.changeName,
                              controllerValidator: controller.nameValidate,
                              requestNode: (){
                                nameNode.requestFocus();
                                setState(() {});}),
                          EditTextIInputWidget(labelText: "E-mail",
                              maxLine: 1,controller: email,
                              focusNode: emailNode,isVisibility: show,
                              onChanged: controller.changeEmail,
                              controllerValidator: controller.emailValidator,
                              requestNode: (){
                                emailNode.requestFocus();
                                setState(() {});}),
                          EditTextIInputWidget(labelText: "Instagram",
                            maxLine: 1,controller: instagram,
                            focusNode: instagramNode,isVisibility: show,
                            onChanged: controller.changeInstagram,
                            controllerValidator: controller.instagramValidator,
                            requestNode: (){
                              instagramNode.requestFocus();
                              setState(() {});},
                          ),
                          EditTextIInputWidget(
                              labelText: "Sobre mim",maxLine: 4,
                              maxLength: 310,controller: about,
                              focusNode: aboutNode,isVisibility: false,
                              onChanged: controller.changeAbout,
                              controllerValidator: controller.aboutValidator,
                              requestNode: (){
                                aboutNode.requestFocus();
                                setState(() {});
                              }),
                          SizedBox(
                            height: 40,
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(children: [
                        InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFE8E5F3),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              width: MediaQuery.of(context).size.width * 1.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Perfil no App",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Montserrat Bold",
                                        color: Kdeep_perpleColor,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 30,
                                    color: Kdeep_perpleColor,
                                  )
                                ],
                              ),
                            )),
                        Visibility(
                            visible: false,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  SearchingEditWidget(),
                                  LocationEditWidget(),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Nível de graduação",
                                    style: TextStyle(
                                        fontFamily: "Montserrat Bold",
                                        fontSize: 15),
                                  ),
                                  SingleCheckboxOptionWidget(
                                    checkGraduation: controller.checkGraduation,
                                    changeGraduation: controller.changeCheckGraduation,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    child: Text(
                                      "Especialidade",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: KBlackLightTextColor,
                                        fontFamily: "Montserrat Bold",),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(primaryColor:Color(0xFF050072)),
                                    child: Container(
                                      child: CustomAutoCompletedWidget(
                                        element: Color(0xFF050072),
                                        controller: speciality,
                                        suggestion: controller.specialityList,
                                        textSubmit: controller.changeSpeciality,
                                        onChanged: controller.changeSpeciality,
                                        keyText: keyStringSpeciality,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Atividades de interesse",
                                    style: TextStyle(
                                        fontFamily: "Montserrat Bold",
                                        fontSize: 15),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: controller.programs,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            )),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    height: 50,
                    elevation: 0,
                    highlightElevation: 0,
                    shape: StadiumBorder(),
                    color: KButtonLightTextColor.withOpacity(0.6),
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    onPressed: () {},
                    child: Text(
                      "ATUALIZAR",
                      style: TextStyle(fontFamily: "Montserrat Bold",color: Kdeep_PurpleAccentColor.withOpacity(0.3)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
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