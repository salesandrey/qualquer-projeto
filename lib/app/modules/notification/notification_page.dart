import 'package:PadrinhoMED/app/models/notification_model.dart';
import 'package:PadrinhoMED/app/modules/notification/componentes/card_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'notification_controller.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends ModularState<NotificationPage, NotificationController> {


  Future<void> initiFunctions() async{
    await controller.takeID();
    await controller.initStream();
  }

  @override
  void initState() {
    initiFunctions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Observer(builder: (_){
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            elevation: 0.5,
            backgroundColor: Color(0xFFFAFAFA),
            title: Text("Notificações",
              textAlign: TextAlign.left,style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat Bold",fontSize: 18),),
          ),
          body: StreamBuilder<List<NotificationModel>>(
              stream: controller.notifications,
              builder: (context, snapshot){
                if(snapshot.connectionState==ConnectionState.active){
                  return ListView.separated(
                      itemBuilder: (BuildContext context, int index){
                        return InkWell(
                            onTap: (){
                              Modular.to.pushNamed("/ProfileNotification",arguments:snapshot.data[index].idRemetente);
                            },
                            child: CardNotificationWidget(cardData: snapshot.data[index]));
                      },
                      separatorBuilder: (BuildContext context, int index){
                        return Divider(color: Color(0xFFD9D9D9),height: 1);
                      },
                      itemCount: snapshot.data==null?0:snapshot.data.length);
                }
                if(!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          Color(0xFF6259B2))));
                }
                if(snapshot.hasError){
                  return Container();
                }
                return Container();
              }
          ),
        ),
      );
    });
  }
}
