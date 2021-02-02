import 'package:PadrinhoMED/app/modules/configuration/componentes/switch_config_widget.dart';
import 'package:PadrinhoMED/app/modules/configuration/componentes/update_button_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'configuration_controller.dart';

class ConfigurationPage extends StatefulWidget {

  @override
  _ConfigurationPageState createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends ModularState<ConfigurationPage, ConfigurationController> {

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 640,
                maxHeight: MediaQuery.of(context).size.height>=640?MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top -MediaQuery.of(context).padding.bottom :640
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1,vertical: 32),
                    child: InkWell(
                      onTap: () {
                        Modular.to.pop();
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios,
                            color: Kdeep_perpleColor,
                            size: 18,
                          ),
                          Text('VOLTAR',
                            style: TextStyle(
                              fontFamily: "Montserrat Regular",
                              fontSize: 15,
                              color: Kdeep_perpleColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Configurações",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Montserrat Bold",
                                fontSize: 24,
                                color: KBlueTextColor),
                          ),
                          SizedBox(height: 2),
                          Text("Por uma experiência incrível conosco…",
                            style: TextStyle(fontSize: 15,
                                color: Color(0xFF666666),
                                fontFamily: "Montserrat Regular"),)
                        ],
                      )),
                  SizedBox(height: 32,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SwitchConfigWidget(title: "Notificações por E-mail",
                            off: controller.emailNotification,
                            turnON: controller.changeEmailNotification,),
                          SizedBox(height: 18,),
                          SwitchConfigWidget(title: "Notificações Push",
                            off: controller.pushNotification,
                            turnON: controller.changePushNotification,),
                          SizedBox(height: 25.5,),
                          Divider(color: Color(0xFFe8e6f4), thickness: 1.0,),
                          SizedBox(height: 25.5,),
                          SwitchConfigWidget(title: "Favoritado por alguém",
                            color: controller.pushNotification?Color(0xFF313131):Color(0xFFd9d9d9),
                            off: controller.somebodyFavorite,
                            turnON: controller.pushNotification?controller.changeSomebodyFavorite:null,),
                          SizedBox(height: 17,),
                          SwitchConfigWidget(
                            title: "Solicitado para ser padrinho",
                            color: controller.pushNotification?Color(0xFF313131):Color(0xFFd9d9d9),
                            off: controller.notificationGodFather,
                            turnON: controller.pushNotification?controller.changeNotificationGodFather:null,),
                          SizedBox(height: 17,),
                          SwitchConfigWidget(
                            title: "Escolhido para ser afilhado",
                            color: controller.pushNotification?Color(0xFF313131):Color(0xFFd9d9d9),
                            off: controller.chooseGodson,
                            turnON: controller.pushNotification?controller.changeChooseGodson:null,),
                          SizedBox(height: 17,),
                          SwitchConfigWidget(
                            title: "Apadrinhamentos Oficiais",
                            color: controller.pushNotification?Color(0xFF313131):Color(0xFFd9d9d9),
                            off: controller.officialGodfather,
                            turnON: controller.pushNotification?controller.changeOfficialGodFather:null,),

                        ])),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1,vertical: 40),
                    child: UpdateButtonWidget(
                        navigation: controller.changeConfiguration ? () {
                          Modular.to.pop();
                        } : null,
                        disableColor: KButtonLightColor,
                        disableTextColor: Color(0xFFdad9ea),
                        text: "ATUALIZAR",
                        color: Color(0xFF6259B2),
                        textColor: Colors.white,
                        highLightColor: KBlueTextColor,
                        elevation: 0.00),
                  )
                ]),
            ),
          ),
          ),

      );
    });
  }
}
