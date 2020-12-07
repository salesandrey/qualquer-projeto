import 'package:PadrinhoMED/app/modules/telas_temporarias/premium2.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class P4ContaPremium1 extends StatefulWidget {
  static String id = 'P4ContaPremium1';

  @override
  _P4ContaPremium1State createState() => _P4ContaPremium1State();
}

class _P4ContaPremium1State extends State<P4ContaPremium1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  color: KOrangeColor,
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
                Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(140),
                        ),
                        color: KOrangeColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              'Conta Premium',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: KOrange2Color,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15, top: 8),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: FittedBox(
                                child: Text(
                                  'Sempre dá pra ser melhor, né?',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: KBlackLightTextColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 90),
                        height: 230.0,
                        width: MediaQuery.of(context).size.width*1,
                        child: Carousel(
                          dotSize: 7.0,
                          dotIncreaseSize: 1.20,
                          autoplay: false,
                          dotSpacing: 20.0,
                          dotIncreasedColor: Kdeep_PurpleAccentColor,
                          dotColor: KGreyColor.withOpacity(0.3),
                          indicatorBgPadding: 5.0,
                          dotBgColor: Colors.transparent,
                          images: [
                            Container(
                              height: 220,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 96,
                                    width: 96,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: KOrange2Color.withOpacity(
                                          0.9),
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage('assets/images/search-interface-symbol (1).png'),
                                        width: 50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Mais filtros de busca',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: KBlueColor,
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            'Encontre afilhados e padrinhos\nideais com filtros exclusivos de\nlocalização e ano de formação',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Kdeep_perpleColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 220,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 96,
                                    width: 96,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: KOrange2Color.withOpacity(
                                          0.9),
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage('assets/badge (1).png'),
                                        width: 50,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Certificados digitais',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: KBlueColor,
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            'Com as Contas Premium do\nPadrinhoMed, você poderá gerar\naté 3 certificados digitais no app',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Kdeep_perpleColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 220,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 96,
                                    width: 96,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: KOrange2Color.withOpacity(
                                          0.9),
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage('assets/images/pig.png'),
                                        width: 55,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Custo benefício',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: KBlueColor,
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            'Você consegue gerar um\ncertificado digital em planos\na partir de R\$79,90 por mês',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Kdeep_perpleColor,
                                            ),
                                          ),
                                        ),
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
                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Cards(
                                      txt: 'Plus',
                                      txt2: 'R\$',
                                      txt3: '79',
                                      txt4: ',90 / mês',
                                      txt5: 'no plano anual',
                                      txt6: '1 certificado',
                                      txt7: '4 filtros de busca',
                                      txt8: 'É ESSE!',
                                      icn: Icons.watch,
                                      icn2: Icons.search,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Cards(
                                      txt: 'Full',
                                      txt2: 'R\$',
                                      txt3: '239',
                                      txt4: ',90 / mês',
                                      txt5: 'no plano anual',
                                      txt6: '3 Certificado',
                                      txt7: '4 filtros de busca',
                                      txt8: 'É ESSE!',
                                      icn: Icons.watch,
                                      icn2: Icons.search,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}

class Cards extends StatefulWidget {
  Cards({
    this.txt,
    this.txt2,
    this.txt3,
    this.txt4,
    this.txt6,
    this.txt7,
    this.txt5,
    this.txt8,
    this.icn,
    this.icn2,
  });

  final txt;
  final txt2;
  final txt3;
  final txt4;
  final txt5;
  final txt6;
  final txt7;
  final txt8;
  final icn;
  final icn2;

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Kdeep_perpleColor,
          width: 1,
        ),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7),
                        topLeft: Radius.circular(7)),
                    color: Kdeep_perpleColor,
                  ),
                  child: Text(
                    widget.txt,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: KwhiteColor,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  widget.txt2,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: KgreyColor,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  widget.txt3,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: KblackColor,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  widget.txt4,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: KblackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: FittedBox(
                          child: Text(
                            widget.txt5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: KgreyColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('assets/images/badge.png'),
                                width: 18,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Flexible(
                                child: FittedBox(
                                  child: Text(
                                    widget.txt6,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Kdeep_perpleColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage(
                                    'assets/images/search_interface.png'),
                                width: 18,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Flexible(
                                child: FittedBox(
                                  child: Text(
                                    widget.txt7,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Kdeep_perpleColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -15,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context)=>P5ContaPremium(),)
                );
              },
              child: Container(
                height: 32,
                width: MediaQuery.of(context).size.width * 0.33,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 140),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Kdeep_PurpleAccentColor,
                ),
                child: Text(
                  widget.txt8,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: KwhiteColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}