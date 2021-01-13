import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MonkeyCertificationWidget extends StatelessWidget {


  final String description = "Putz! Com o plano Free \ndo PadrinhoMed não vai \nrolar nenhum certificado";
  final String helpText = "Clique aqui para conhecer \nnosso Plano Premium:";


  @override
  Widget build(BuildContext context) {
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
                      "Meus Certificados",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Montserrat Bold",
                          fontSize: 24,
                          color: KBlueTextColor),
                    ),
                  ),
                ),
                SizedBox(height: 78,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          child: Column(
                            children: [
                              Card(
                                elevation: 4,
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Container(
                                  height: 136,
                                  width: 136,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Image(
                                      image: AssetImage('assets/images/monkey.png'),
                                      width: 80,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 32),
                                child: Text(description,textAlign: TextAlign.center,
                                    style: TextStyle(color: Color(0xFF313131),fontFamily: "Montserrat Bold",fontSize: 18)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Text(helpText,textAlign: TextAlign.center,
                                    style: TextStyle(color: Color(0xFF313131),fontFamily: "Montserrat Regular",fontSize: 15)),
                              ),
                            ],
                          ),
                        )]),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
                  child: Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                          onPressed: (){Modular.to.pushNamed("/Premium");},
                          color: Color(0xFFfbf1e5),
                          elevation: 0,
                          shape: StadiumBorder(),
                          child: FittedBox(child: Text("QUERO CONHECER", style: TextStyle(
                              fontFamily: "Montserrat Bold",
                              fontSize: 18,
                              color: Color(0xFF313131)),
                          )))),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
