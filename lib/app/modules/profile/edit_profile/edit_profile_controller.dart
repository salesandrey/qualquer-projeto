import 'dart:io';
import 'dart:ui';

import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/checkbox_programs_widget.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/viewmodel/list_programs_viewmodel.dart';
import 'package:PadrinhoMED/app/repositories/location_repository.dart';
import 'package:PadrinhoMED/app/repositories/user_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';



part 'edit_profile_controller.g.dart';

@Injectable()
class EditProfileController = _EditProfileControllerBase
    with _$EditProfileController;

abstract class _EditProfileControllerBase with Store {


  @observable
  bool changeDatas = false;

  @action
  void changeChangeDatas(bool value){
    changeDatas = value;
  }

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  int id;

  @observable
  String code;

  @action
  void changeCode(String value){
    code = value;
  }


  @action
  void changeID(int value){
    id = value;
  }

  @observable
  String name;

  @observable
  ObservableList<Atividade> activits;

  @observable
  ObservableList<Interess> interests;

  @action
  void changeListActivits(List<Atividade> value){
    activits = value.asObservable();
  }

  @action
  void changeListInteress(List<Interess> value){
    interests = value.asObservable();
  }

  @observable
  String nameFeedback;

  @observable
  bool nameValidate = false;

  @action
  void changeName(String value){
    name = value;
  }

  @action
  void changeNameFeedback(String value){
    nameFeedback = value;
  }

  @action
  void changeNameValidate(bool value){
    nameValidate = value;
  }

  @observable
  String email;

  @observable
  String emailFeedBack = "";

  @observable
  bool emailValidator = false;

  @action
  void changeEmail(String value){
    email = value;
  }

  @action
  void updateEmailFeedBack(String value){
    emailFeedBack = value;
  }

  @action
  void changeEmailValidator(bool value){
    emailValidator = value;
  }

  @observable
  String instagram;

  @observable
  String instagramFeedback;

  @observable
  bool instagramValidator = false;

  @action
  void changeInstagram(String value){
    instagram = value;
  }

  @action
  void changeInstagramFeedback(String value){
    instagramFeedback = value;
  }

  @action
  void changeInstagramValidator(bool value){
    instagramValidator = value;
  }

  @observable
  String about;

  @observable
  String aboutFeedback;

  @observable
  bool aboutValidator = false;

  @action
  void changeAbout(String value){
    about = value;
  }

  @action
  void changeAboutFeedback(String value){
    aboutFeedback = value;
  }

  @action
  void changeAboutValidator(bool value){
    aboutValidator = value;
  }

  @observable
  String typeSearch;

  @observable
  String locationState;

  @observable
  String locationCity;

  @observable
  String graduation;

  ObservableList activities = [].asObservable();

  @observable
  String speciality;

  @action
  void changeTypeSearch(String value){
    typeSearch = value;
  }

  @action
  void changeLocationState(String value){
    locationState = value;
  }

  @action
  void changeLocationCity(String value){
    locationCity = value;
  }

  @action
  void changeGraduation(String value){
    graduation = value;
  }

  @action
  void addActivities(String value){
    activities.add(value);
  }

  @action
  void removeActivities(String value){
    activities.remove(value);
  }

  @action
  void changeSpeciality(String value){
    speciality = value;
  }


  List<String> specialityList = [
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
  int valueRadio;

  @action
  void changeValueRadio(String value){
    if(value=="Afilhado"){
        valueRadio = 0;
      }else{
      valueRadio = 1;
    }
  }

  @action
  void changeRadio(int value){
    valueRadio = value;
    if(value==0){
      changeTypeSearch("Afilhado");
    }else{
      changeTypeSearch("Padrinho");
    }
  }

  @observable
  int checkGraduation = 0;

  @action
  changeCheckGraduation(int value){
    checkGraduation = value;
  }

  @observable
  ObservableList<CheckBoxProgramsWidget> programs;

  Future<void> addProgramsToList() async{
    programs =  ListProgramsViewModel().createListCheckBox(activits).asObservable();
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
    cities = LocationRepository(id: model.sigla.toString()).cities.asObservable().asBroadcastStream();
  }

  @action
  void changeCitiesAndState(String value){
    changeLocationState(value);
    getCity(ufs.singleWhere((element) => element.nome==value,orElse:() => UfModel(nome: value)));
  }

  @action
  Future<void> takeUserData() async{

    ILocalStorage storage = SharedLocalStorageService();
    String email = await storage.get("email");
    String password = await storage.get("password");
    dynamic data =  await UserRepository().get(email, password);

    UserModel model = UserModel.fromMap(data["results"]);

    print(model.toMap());



    changeName(model.nome);
    changeEmail(model.email);
    changeInstagram(model.instagram);
    changeAbout(model.sobre);
    changeTypeSearch(model.tipo);
    changeLocationState(model.estado);
    changeLocationCity(model.cidade);
    changeGraduation(model.graduacao);
    changeSpeciality(model.especialidade);
    changeListActivits(model.atividades);
    changeListInteress(model.interesses);
    changeCode(model.cod);
    changeID(model.id);
    changeValueRadio(model.tipo);
    switch(model.graduacao){
      case "Estudantes (1º ao 8º semestre)":
        changeCheckGraduation(1);
        break;
      case "Internato (9º ao 12º semestre)":
        changeCheckGraduation(2);
        break;
      case "Médico Generalista":
        changeCheckGraduation(3);
        break;
      case "Residente / Em Especialização":
        changeCheckGraduation(4);
        break;
      case "Médico Especialista":
        changeCheckGraduation(5);
        break;
    }
  }

  @action
  Future<void> saveData() async{

    Map<int,String> graduationMap = {
      1 : "Estudantes (1º ao 8º semestre)",
      2 : "Internato (9º ao 12º semestre)",
      3 : "Médico Generalista",
      4 : "Residente / Em Especialização",
      5 : "Médico Especialista"
    };

    Map<String,String> typeActivits ={
      "Posts para Redes Sociais":"20",
      "Discussão de Casos Clínicos e Aulas":"21",
      "Trabalhos Científicos":"22",
      "Mentoria sobre Carreira Médica":"23",
      "Acompanhamento de Rotina Médica":"24"
    };

     List<String> selectActivits = programs.where((element) => element.controller.check).map((e) => e.controller.title).toList();

     List<Atividade> currentActivits = selectActivits.map((e) => Atividade(atividade: e,tipo: typeActivits[e],
         id: 0)).toList();

     List<Interess> currentInteress = [Interess(
         id: interests[0].id,
         tipo: typeSearch,
         cidade: locationCity,
         graduacao:graduationMap[checkGraduation],
         especialidade: speciality,
         estado: locationState)
     ];

     UserModel userToUpdate = UserModel(
       id: id,
       cod: code,
       situacao: "free",
       nome: name,
       email: email,
       instagram: instagram,
       tipo: typeSearch,
       graduacao: graduationMap[checkGraduation],
       especialidade: speciality,
       data: DateTime.now(),
       cidade: locationCity,
       estado: locationState,
       dispositivo: Platform.isAndroid? "Android":"Ios",
       sobre: about,
       interesses: currentInteress,
       atividades: currentActivits
     );

     print(userToUpdate.toMap());

     await UserRepository().update(userToUpdate);

  }
}
