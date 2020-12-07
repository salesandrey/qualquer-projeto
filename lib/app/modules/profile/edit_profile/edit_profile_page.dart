import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/edit_text_input_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/location_edit_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/search_edit_widget.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    username.text = "Andrey";
    name.text = "Andrey Sales";
    email.text = "salesandrey11@hotmail.com";
    instagram.text = "@salesandrey";
    about.text = "Eu sou uma pessoa incrivelmente legal!";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                                color: Kdeep_perpleColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: KBlueColor.withOpacity(0.3),
                      ),
                      child: Image.asset("assets/opeeye.png"),
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
                      fontWeight: FontWeight.w900,
                      color: Kdeep_perpleColor,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'Confirme suas informações abaixo:',
                        style: TextStyle(
                          fontSize: 15,
                          color: KBlackLightTextColor,
                        ),
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        EditTextIInputWidget(labelText: "Nome ou apelido",maxLine: 1,controller: username,),
                        EditTextIInputWidget(labelText: "Nome e sobrenome",maxLine: 1,controller: name,),
                        EditTextIInputWidget(labelText: "E-mail",maxLine: 1,controller: email,),
                        EditTextIInputWidget(labelText: "Instagram",maxLine: 1,controller: instagram,),
                        EditTextIInputWidget(labelText: "Sobre mim",maxLine: 12,maxLength: 310,controller: about,),
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Kdeep_perpleColor.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: MediaQuery.of(context).size.width * 1.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Perfil no App",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Kdeep_perpleColor,
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
                          visible: true,
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
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
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: TextField(
                                    style: TextStyle(fontSize: 15),
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      hintText: "Ginecologia e Obstetrica",
                                      suffixIcon: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            ColorFiltered(
                                              colorFilter: ColorFilter.mode(
                                                  KGreyColor, BlendMode.srcIn),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/search-interface-symbol (1).png'),
                                                width: 18,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Atividades de interesse",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
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
                    style: TextStyle(fontWeight: FontWeight.bold,color: Kdeep_PurpleAccentColor.withOpacity(0.3)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    "Para mudar também as outras informações do seu perfil,",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, height: 1.3),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    " clique aqui e faça o quiz",
                    style: TextStyle(
                      fontSize: 13,
                      color: Kdeep_perpleColor,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class checkboxes extends StatefulWidget {
  checkboxes({this.txt, this.checkedValue, this.col});

  final col;
  final txt;
  bool checkedValue;

  @override
  _checkboxesState createState() => _checkboxesState();
}

class _checkboxesState extends State<checkboxes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff707070),
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Checkbox(
              checkColor: widget.col,
              activeColor: widget.col,
              value: widget.checkedValue,
              onChanged: (value) {
                setState(() {
                  widget.checkedValue = !widget.checkedValue;
                });
              },
            ),
          ),
          Flexible(
            child: FittedBox(
                child: Text(
                  widget.txt,
                  style: TextStyle(color: kGrey),
                )),
          ),
        ],
      ),
    );
  }
}
