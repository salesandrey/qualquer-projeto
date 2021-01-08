import 'dart:math';

import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'loading_controller.g.dart';

@Injectable()
class LoadingController = _LoadingControllerBase with _$LoadingController;

abstract class _LoadingControllerBase with Store {


  @observable
  ObservableList<String> currentsMessages;

  @action
  void loadingMessages(){
    List<String> newMessages = [];
    var rnd = Random();
    for(int i =0; i < 4;i++){
      final value = rnd.nextInt(messagesLoading.length);
      if(!newMessages.contains(messagesLoading[value])){
        newMessages.add(messagesLoading[value]);
      }
    }
    currentsMessages = newMessages.asObservable();
  }

  List<String> messagesLoading = [
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
  ];
}
