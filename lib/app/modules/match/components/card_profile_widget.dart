import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/match/components/button_card_profile_widget.dart';
import 'package:PadrinhoMED/app/modules/match/components/rounded_icon_card_widget.dart';
import 'package:PadrinhoMED/app/modules/match/components/text_card_profile_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/size_config.dart';
import 'package:PadrinhoMED/app/utils/uf_brazil.dart';
import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {

  final UserMatchModel user;
  final Map<String,Color> colorCard = {
    "Estudante (1º ao 8º semestre)":Color(0xFFED7AA0),
    "Interno (9º ao 12º semestre)":Color(0xFFA652B7),
    "Médico Generalista":Color(0xFF6AA4E8),
    "Em Especialização / Residente":Color(0xFF3FBAA3),
    "Médico Especialista":Color(0xFFFFBE69)
  };

  CardProfile({Key key, this.user,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: colorCard[user.graduacao],
              ),
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 24),
                    child: Text(
                      "${user.nome.split(" ").first} ${user.nome.split(" ").last.substring(0,1)}.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Montserrat Bold",
                      ),
                    ),
                  ),
                  Container(
                    child: Text(user.graduacao=="Em Especialização / Residente" || user.graduacao=="Médico Especialista"?
                    "${user.especialidade} " : "Interesse: ${user.especialidade} ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: KGreyColor,
                        fontFamily: "Montserrat Bold",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 24,left:24,right: 24 ),
                child: TextCardProfileWidget(text1: "Nível de Graduação",text2: user.graduacao)),
            Container(
                padding: EdgeInsets.only(top: 20,left: 24,right: 24),
                child: TextCardProfileWidget(text1: "Localização",text2: "${user.cidade}, ${UFBrazil.ufBrazil.keys.firstWhere((element) => UFBrazil.ufBrazil[element]==user.estado)}")),
            Container(
              padding: EdgeInsets.only(top: 20,left: 24,right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    fit:BoxFit.fitWidth,
                    child: Text(
                      "Contatos de ${user.nome.split(" ").first}",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Montserrat Bold",
                          color: Color(0xFF050072)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonCardProfileWidget(text: "E-mail"),
                        SizedBox(width: 8,),
                        ButtonCardProfileWidget(text: "Instagram")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              indent: 15,
              endIndent: 15,
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Programas PadrinhoMed',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF050072),
                        fontFamily: "Montserrat Bold",
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: user.atividades.map((e) => RoundedIconCardWidget(title: e.atividade)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
