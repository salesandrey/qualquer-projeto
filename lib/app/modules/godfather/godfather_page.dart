import 'package:PadrinhoMED/app/modules/godfather/componentes/card_certification_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'godfather_controller.dart';

class GodfatherPage extends StatefulWidget {

  @override
  _GodfatherPageState createState() => _GodfatherPageState();
}

class _GodfatherPageState extends ModularState<GodfatherPage, GodfatherController> {


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 32),
                        child: InkWell(
                          onTap: () {
                            Modular.to.pushReplacementNamed("/Navigator",arguments: [0,0]);
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Certificados",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 24,
                                  color: KBlueTextColor),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Emita os certificados para os seus afilhados",
                              textAlign: TextAlign.left,
                              style:
                              TextStyle(fontSize: 18, color: KGreyColor,fontFamily: "Montserrat Regular"),
                            ),

                            SizedBox(height: 25),
                            Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent,unselectedWidgetColor:Kdeep_perpleColor,accentColor: Kdeep_perpleColor),
                                child: ExpansionTile(
                                  tilePadding: EdgeInsets.zero,
                                  title: Text("Solicitados",style: TextStyle(color: Kdeep_perpleColor,fontSize: 16,fontFamily: "Montserrat Regular")),
                                  children: [
                                    CardCertificationWidget()
                                  ],
                                )),
                            Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent,unselectedWidgetColor:Kdeep_perpleColor,accentColor: Kdeep_perpleColor),
                                child: ExpansionTile(
                                    tilePadding: EdgeInsets.zero,
                                    title: Text("Emitidos",style: TextStyle(color: Kdeep_perpleColor,fontSize: 16,fontFamily: "Montserrat Regular"),))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
