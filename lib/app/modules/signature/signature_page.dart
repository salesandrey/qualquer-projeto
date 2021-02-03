import 'dart:io';

import 'package:PadrinhoMED/app/modules/signature/componentes/mask_signature_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart' as ImageSign;
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'signature_controller.dart';
import 'dart:ui' as ui;

class SignaturePage extends StatefulWidget {

  @override
  _SignaturePageState createState() => _SignaturePageState();
}

class _SignaturePageState extends ModularState<SignaturePage, SignatureController> {


  GlobalKey<ImageSign.SignatureState> signatureKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ModalProgressHUD(
        inAsyncCall: controller.loading,
        child: Scaffold(
          backgroundColor: KPrimaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: 640,
                    maxHeight: MediaQuery.of(context).size.height>=640?MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top -MediaQuery.of(context).padding.bottom :640
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 32),
                      child: InkWell(
                        onTap: () {
                          Modular.to.pushReplacementNamed("Navigator",arguments:[4,0]);
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Assinatura do Certificado",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 24,
                              color: KBlueTextColor),
                        ),
                      ),
                    ),
                    SizedBox(height: 45),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Divider(height: 3.0,thickness: 2.0,),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: ImageSign.Signature(
                            color: Colors.black,// Color of the drawing path
                            strokeWidth: 2.0, // with// Additional custom painter to draw stuff like watermark, // Callback called on user pan drawing
                            key: signatureKey, // key that allow you to provide a GlobalKey that'll let you retrieve the image once user has signed
                          ),
                        )
                      ],
                    ),
                    Text("Assinatura do Padrinho",style: TextStyle(fontFamily: "Montserrat Regular",fontSize: 14,color: Colors.black)),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
                      child: Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                              onPressed: () async {
                                controller.changeLoading(true);
                                ui.Image image = await signatureKey.currentState.getData();
                                var pngBytes = await image.toByteData(format: ui.ImageByteFormat.png);
                                await controller.saveImage(pngBytes);
                                controller.changeLoading(false);
                                Modular.to.pushReplacementNamed("/GodFather");
                              },
                              color: Color(0xFFfbf1e5),
                              elevation: 0,
                              shape: StadiumBorder(),
                              child: FittedBox(child: Text("SALVAR", style: TextStyle(
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 18,
                                  color: Color(0xFF313131)),
                              )))),
                    )


                  ]
              ),
            ),
          ),
        )),
      );
    });

  }
}
