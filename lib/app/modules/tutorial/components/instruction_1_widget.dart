import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';

class Instruction1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: KfirstColor.withOpacity(0.9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Seja bem vindo!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Montserrat Bold",
                              color: KSecondaryColor,
                            ),
                          ),
                          Container(
                            child: FittedBox(
                              child: Text(
                                'Como essa é sua primeira vez\npor aqui, vamos explicar as\nfuncionalidades básicas do\napp PadrinhoMed.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Montserrat Regular",
                                  fontSize: 18,
                                  color: KSecondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: FittedBox(
                        child: Text(
                          'Você pode navegar pelas dicas\nclicando em Anterior e Próximo,\naqui embaixo. Vamos lá?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Montserrat Bold",
                            color: KthirdColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
