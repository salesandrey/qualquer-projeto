import 'dart:math';

import 'package:PadrinhoMED/app/app_controller.dart';
import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/repositories/notification_repository.dart';
import 'package:PadrinhoMED/app/services/push_notification_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';

part 'loading_controller.g.dart';


class LoadingController = _LoadingControllerBase with _$LoadingController;

abstract class _LoadingControllerBase with Store {


  _LoadingControllerBase({this.globalController,this.storage});

  @observable
  AppController globalController;

  @observable
  ILocalStorage storage;

  @observable
  ObservableList<String> currentsMessages;

  @action
  Future<void> getMatchesAndFavorites() async {



    String userID = await storage.get("id");

    await NotificationRepository().validateNotifications(userID, PushNotificationService.token);

    await globalController.myMatchesStore.getMyMatches(toInt(userID));

    await globalController.myFavoriteStore.startFavorite(toInt(userID));
  }

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
