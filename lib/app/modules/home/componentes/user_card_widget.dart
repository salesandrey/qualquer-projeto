import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class UserCardWidget extends StatelessWidget {

  final Map<String,Color> colorCard = {
    "Estudante":Color(0xFFED7AA0),
    "Interno":Color(0xFFA652B7),
    "Graduado":Color(0xFF6AA4E8),
    "Residente":Color(0xFF3FBAA3),
    "Especialista":Color(0xFFFFBE69)
  };

  final UserModel user;

  UserCardWidget({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 158,
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: colorCard[user.graduacao]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: FittedBox(
              child: Text(
                user.nome,
                style: TextStyle(
                  color: KBlackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            child: FittedBox(
              child: Text(
                user.especialidade,
                style: TextStyle(
                  color: KBlackColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
