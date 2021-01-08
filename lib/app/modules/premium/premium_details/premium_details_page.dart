import 'package:PadrinhoMED/app/modules/premium/componentes/card_premium_details_widget.dart';
import 'package:PadrinhoMED/app/modules/premium/componentes/inverse_curve_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'premium_details_controller.dart';

class PremiumDetailsPage extends StatefulWidget{

  final String typePlane;
  final dynamic valuePlane;

  const PremiumDetailsPage({Key key, this.typePlane, this.valuePlane}) : super(key: key);

  @override
  _PremiumDetailsPageState createState() => _PremiumDetailsPageState(typePlane: typePlane,valuePlane: valuePlane);
}

class _PremiumDetailsPageState extends ModularState<PremiumDetailsPage, PremiumDetailsController> {

  final String typePlane;
  final dynamic valuePlane;

  _PremiumDetailsPageState({this.typePlane, this.valuePlane});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 32),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ok,Vamos no $typePlane",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Montserrat Bold",
                                      fontSize: 24,
                                      color: Color(0xFFED645A)),
                                ),
                                Text("Selecione a vigência e a forma de \npagamento desse seu plano incrível:",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Montserrat Regular"),),
                                SizedBox(height: 105,),
                                Stack(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.6,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                    Column(
                                      children: [
                                        CardPremiumDetailsWidget(
                                          title: typePlane,
                                          numberCertification: valuePlane[1],
                                          centsValue: valuePlane[3],
                                          realValue: valuePlane[2],
                                          numberFilters: valuePlane[0],
                                        ),
                                        SizedBox(height: 24,),
                                        RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(text: "Selecione uma das ",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Montserrat Regular",
                                                      color: KblackColor,
                                                    )),
                                                TextSpan(text: "formas de Pagamento",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Montserrat Bold",
                                                      color: KblackColor,
                                                    )),
                                                TextSpan(text: "abaixo para continuar:",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Montserrat Regular",
                                                      color: KblackColor,
                                                    )),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                              ],
                            )),

                      ],
                    ),
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
