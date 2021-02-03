import 'package:PadrinhoMED/app/modules/premium/componentes/card_product_widget.dart';
import 'package:PadrinhoMED/app/modules/premium/componentes/item_carousel_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'componentes/curve_premium_widget.dart';
import 'premium_controller.dart';

class PremiumPage extends StatefulWidget {
  @override
  _PremiumPageState createState() => _PremiumPageState();
}

class _PremiumPageState extends ModularState<PremiumPage, PremiumController> {

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 400,
                  child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.43),
                        Positioned(
                          top: 0,
                          child: CustomPaint(
                              painter: CurvePainter(), size: Size(MediaQuery
                              .of(context)
                              .size
                              .width, 208)),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
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
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text("Conta Premium",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: "Montserrat Bold",
                                              fontSize: 24,
                                              color: Color(0xFFED645A)),
                                        ),
                                        SizedBox(height: 2),
                                        Text("Sempre dá pra ser melhor, né?",
                                          style: TextStyle(fontSize: 15,
                                              color: Colors.black,
                                              fontFamily: "Montserrat Regular"),)
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 158,
                          child: Container(
                            height: 220.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 1,
                            child: Carousel(
                              dotSize: 7.0,
                              dotIncreaseSize: 1.20,
                              animationDuration: Duration(seconds: 2),
                              autoplay: true,
                              autoplayDuration: Duration(seconds: 8),
                              dotSpacing: 20.0,
                              dotIncreasedColor: Kdeep_PurpleAccentColor,
                              dotColor: KGreyColor.withOpacity(0.3),
                              indicatorBgPadding: 1.0,
                              dotBgColor: Colors.transparent,
                              images: [
                                ItemCarouselWidget(
                                  title: 'Mais filtros de busca',
                                  description: 'Encontre afilhados \ne padrinhosideais com filtros \nexclusivos de localização',
                                  image: 'assets/images/search-interface-symbol (1).png',
                                ),
                                ItemCarouselWidget(
                                  title: 'Certificados digitais',
                                  description: 'Com as Contas Premium do\nPadrinhoMed, você poderá gerar\naté 3 certificados digitais no app',
                                  image: 'assets/images/badge.png',
                                ),
                                ItemCarouselWidget(title: 'Custo benefício',
                                  description: 'Você consegue gerar um\ncertificado digital em planos\na partir de R\$79,90 por mês',
                                  image: 'assets/images/pig.png',
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                ),
                SizedBox(height: 39,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CardProductWidget(
                            goToDetails: (){
                              //Modular.to.pushNamed("/PremiumDetails",arguments: ["Plus",[4,"1 certificado","67",",00 / mês"]]);
                            },
                            title: "Plus",
                            filter: 4,
                            certifications: "1 certificado",
                            price: "67",
                            cents: ",00 / mês"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      );
    });
  }
}
