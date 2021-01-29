
import 'package:PadrinhoMED/app/models/notification_model.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/utils/time_convert.dart';
import 'package:flutter/material.dart';

class CardNotificationWidget extends StatelessWidget {

  final UserMatchModel user;
  final NotificationModel cardData;

  const CardNotificationWidget({Key key, @required this.user, this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(cardData.toMap());
    return Container(
      width: MediaQuery.of(context).size.width,
      color: cardData.status=="ativo"? Color(0xFFE4E2F0):Color(0xFFFAFAFA),
      child: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24,top: 16,bottom: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: TextSpan(style: TextStyle(fontFamily: "Montserrat Regular",fontSize: 15,color:Colors.black),
                children: [
                  TextSpan(text: "${cardData.nomeAbrev} ",style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,color:Colors.black)),
                  TextSpan(text: cardData.texto),
                  TextSpan(text: " ${cardData.nomeAbrev}"),
                ])),
            SizedBox(height: 1,),
            Text(TimeConvert().convertDatetimeToStringBrazilTime(cardData.data),textAlign: TextAlign.left,style: TextStyle(fontSize: 14,fontFamily: "Montserrat",color: Color(0xFF191919)))
          ],
        ),
      ),
    );
  }
}
