import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_widget.dart';
import 'package:PadrinhoMED/app/modules/searching/viewmodel/list_option_viewmodel.dart';
import 'package:PadrinhoMED/app/repositories/location_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';

part 'searching_controller.g.dart';

@Injectable()
class SearchingController = _SearchingControllerBase with _$SearchingController;

abstract class _SearchingControllerBase with Store {


  @observable
  bool premium = false;

  @action
  void changePremium(bool value){
    premium = value;
  }

  @observable
  int idUser;

  @action
  Future<void> changeIDUser() async{
    ILocalStorage storage = SharedLocalStorageService();
    String value = await storage.get("id");
    idUser = toInt(value);
  }


  @observable
  String state = "";

  @action
  void changeState(String value){
    state = value;
  }

  @observable
  String city = "";

  @action
  void changeCity(String value){
    city = value;
  }

  @observable
  ObservableList<UfModel> ufs;

  @action
  Future<void> getUF() async {
    ufs = await LocationRepository().getUF();
  }

  @observable
  ObservableStream<List<CityModel>> cities;

  @action
  Future<void> getCity(UfModel model) async{
    cities = LocationRepository(id: model.id.toString()).cities.asObservable().asBroadcastStream();
  }

  @observable
  String userInstagramEmailSearching;

  @action
  void changeNameInstagramSearching(String value){
    userInstagramEmailSearching = value;
  }

  @observable
  ObservableList<UserModel> users = [UserModel()].asObservable();

  List<String> programsText = [
    "Posts para Redes Sociais",
    "Discussão de Casos Clínicos e Aulas",
    "Trabalhos Científicos",
    "Mentoria sobre Carreira Médica",
    "Acompanhamento de Rotina Médica",
  ];

  List<String> specialitsText =[
    "Clínica Médica",
    "Pediatria",
    "Cirurgia Geral",
    "Ginecologia e Obstetrícia",
    "Anestesiologia",
    "Medicina do Trabalho",
    "Ortopedia e Traumotologia",
    "Cardiologia",
    "Oftalmologia",
    "Radiologia e Diagnóstico por Imagem",
    "Psiquiatria",
    "Dermatologia",
    "Medicina Intensiva",
    "Otorrinolaringologia",
    "Cirurgia Plástica",
    "Medicina de Família e Comunidade",
    "Urologia",
    "Medicina de Tráfego",
    "Endocrinologia e Metabologia",
    "Neurologia",
    "Gastroenterologia",
    "Nefrologia",
    "Cirurgia Vascular",
    "Infectologia",
    "Acupuntura",
    "Oncologia Clínica",
    "Pneumologia",
    "Neurocirurgia",
    "Patologia",
    "Endoscopia",
    "Cirurgia do Aparelho Digestivo",
    "Hematologia e Hemoterapia",
    "Homeopatia",
    "Reumatologia",
    "Cirurgia Cardiovascular",
    "Mastologia",
    "Coloproctologia",
    "Medicina Preventiva e Social",
    "Geriatria",
    "Nutrologia",
    "Angiologia",
    "Arlegia e Imunologia",
    "Patologia Clínica/Medicina Laboratorial",
    "Cirurgia Pediátrica",
    "Cirurgia Oncológica",
    "Cirurgia de Cabeça e Pescoço",
    "Cirurgia Toráxica",
    "Medicina Nuclear",
    "Medicina Física e Reabilitação",
    "Medicina Esportiva",
    "Medicina Legal e Perícia Médica",
    "Cirurgia da Mão",
    "Radioterapia",
    "Genética Médica"
  ];

  @observable
  ObservableList<CheckBoxWidget> listGraduation = [
    CheckBoxWidget(controller: CheckboxController(title:"Estudante (1º ao 8º semestre)",check: false),color:Color(0xFFED7AA0)),
    CheckBoxWidget(controller: CheckboxController(title:"Internato (9º ao 12º semestre)",check: false),color:Color(0xFFA652B7)),
    CheckBoxWidget(controller: CheckboxController(title:"Médico Generalista",check: false),color:Color(0xFF6AA4E8)),
    CheckBoxWidget(controller: CheckboxController(title:"Residente / Em Especialização",check: false),color:Color(0xFF3FBAA3)),
    CheckBoxWidget(controller: CheckboxController(title:"Médico Especialista",check: false),color:Color(0xFFFFBE69)),
  ].asObservable();

  @observable
  ObservableList<CheckBoxWidget> programs;

  @observable
  ObservableList<CheckBoxWidget> specialists;


  Future<void> addProgramsToList() async{
    programs =  ListOptionViewModel().createListCheckBox(programsText).asObservable();
    specialitsText.sort((a,b){
      return a.toLowerCase().compareTo(b.toLowerCase());
    });
    specialists = ListOptionViewModel().createListCheckBox(specialitsText).asObservable();
  }
}
