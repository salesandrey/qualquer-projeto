import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'loading_controller.dart';

class LoadingPage extends StatefulWidget {
  final String title;
  const LoadingPage({Key key, this.title = "Loading"}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends ModularState<LoadingPage, LoadingController> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 1,),
                  Center(
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (_, child) {
                        return Transform.rotate(
                          angle: _controller.value * 2 * 3.14,
                          child: child,
                        );
                      },
                      child: Image.asset("assets/images/icon.png",width: 58,height: 58,),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child: Text("Woohoo!",textAlign: TextAlign.center,style: TextStyle(color: kCheck,fontFamily: "Montserrat Bold",fontSize: 18),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("Suas respostas foram registradas.\nAguarde enquanto sua tela inicial está sendo configurada.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16,color: kGrey,fontFamily: "Montserrat Regular"),),
                  ),
                  Spacer(flex: 1,),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: FadeAnimatedTextKit(
                        duration:  Duration(seconds: 2),
                        isRepeatingAnimation: false,
                        text: [
                          "Passando visita na enfermaria…",
                          "Atendendo ao código vermelho…",
                          "Fazendo a descrição cirúrgica…",
                          "Colhendo anamnese…",
                          "Tentando entender o ciclo de Krebs…",
                          "Lendo milhões de livros complexos…",
                          "Fingindo que auscultei aquele sopro cardíaco…",
                          "Tirando selfie de jaleco…",
                          "Implorando para o professor arredondar o 4,5 para 6,0…",
                          "Checando pulso…",
                        ],
                        onFinished: (){
                          Modular.to.pushReplacementNamed("/Navigator");
                        },
                        textStyle: TextStyle(
                            fontSize: 18.0,
                            color: kGrey,
                            fontFamily: "Montserrat Bold"
                        ),
                        textAlign: TextAlign.center,
                        alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
