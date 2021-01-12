import 'package:PadrinhoMED/app/modules/configuration/componentes/switch_config_widget.dart';
import 'package:PadrinhoMED/app/modules/configuration/componentes/update_button_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
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
      print(MediaQuery.of(context).size.height);
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 32),
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
                            padding: const EdgeInsets.symmetric(horizontal: 40),
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
                        Container(
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
                                off: controller.somebodyFavorite,
                                turnON: controller.changeSomebodyFavorite,),
                              SizedBox(height: 17,),
                              SwitchConfigWidget(
                                title: "Meu favorito me favoritou",
                                off: controller.favoriteFavorite,
                                turnON: controller.changeFavoriteFavorite,),
                              SizedBox(height: 17,),
                              SwitchConfigWidget(
                                title: "Solicitado para ser padrinho",
                                off: controller.notificationGodFather,
                                turnON: controller.changeNotificationGodFather,),
                              SizedBox(height: 17,),
                              SwitchConfigWidget(
                                title: "Escolhido para ser afilhado",
                                off: controller.chooseGodson,
                                turnON: controller.changeChooseGodson,),
                              SizedBox(height: 17,),
                              SwitchConfigWidget(
                                title: "Apadrinhamentos Oficiais",
                                off: controller.officialGodfather,
                                turnON: controller.changeOfficialGodFather,),

                            ]))]),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      color: Colors.pink,
                      padding: EdgeInsets.only(top: 50,bottom: 40,right: 40,left: 40),
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
                    ),
                  )
                ],
              ),
          ),
          ),

      );
    });
  }
}
