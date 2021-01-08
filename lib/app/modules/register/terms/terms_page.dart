import 'package:PadrinhoMED/app/modules/register/components/button_confirm_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

class TermsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final controller = Provider.of<RegisterController>(context);
    return Scaffold(
        backgroundColor: Color(0xFF313131),
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
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
                            Modular.to.pop();
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios,
                                color: Color(0xFFFFFFFF),
                                size: 18,
                              ),
                              Text('VOLTAR',
                                style: TextStyle(
                                  fontFamily: "Montserrat Regular",
                                  fontSize: 15,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 12),
                        width: MediaQuery.of(context).size.width *0.7 ,
                        height: MediaQuery.of(context).size.height*0.65,color: Colors.white,)
                ]),
              ),
              Positioned(bottom: 40,left: 40,right: 40,
                  child: ButtonConfirmWidget(
                      navigation: (){
                        controller.acceptTerms(true);
                        Modular.to.pop();},
                      disableColor: KButtonLightColor,
                      disableTextColor:KButtonLightTextColor,
                      text: "DECLARO QUE LI E ACEITO",
                      color: Color(0xFF6259B2),
                      textColor: Colors.white,
                      highLightColor: KBlueTextColor,
                      elevation: 0.00)
              ),
            ],
          ),
        ),
    );
  }
}
