import 'dart:convert';
import 'dart:io';
import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/repositories/email_validator_repository.dart';
import 'package:PadrinhoMED/app/repositories/location_repository.dart';
import 'package:PadrinhoMED/app/repositories/user_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:PadrinhoMED/app/utils/time_convert.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_controller.g.dart';

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  String username = "";

  @observable
  String pinRecerved;

  @action
  void changePintRecerved(String value){
    pinRecerved = value;
  }

  @observable
  String instagram = "";

  @action
  void changeInstagram(String value){
    instagram = value;
  }

  @observable
  String usernameFeedback = "";

  @observable
  bool usernameValidator = false;

  @action
  void changeUsername(String value){
    username = value;
  }

  @action
  void changeUsernameFeedback(String value){
    usernameFeedback = value;
  }

  @action
  void changeUsernameValidator(bool value){
    usernameValidator = value;
  }

  @observable
  String email="";

  @observable
  String emailFeedBack = "";

  @observable
  bool emailValidator = false;

  @observable
  String password="";

  @observable
  String passwordFeedBack="";

  @observable
  bool passwordValidator = false;

  @action
  void changeEmail(String value){
    email = value;
  }

  @action
  void changePassword(String value){
    password = value;
  }

  @action
  void updateEmailFeedBack(String value){
    emailFeedBack = value;
  }

  @action
  void changeEmailValidator(bool value){
    emailValidator = value;
  }

  @action
  void updatePasswordFeedBack(String value){
    passwordFeedBack = value;
  }

  @action
  void changePasswordValidator(bool value){
    passwordValidator = value;
  }

  @observable
  String pinCode = "";

  @observable
  String pinCodeFeedback = "";

  @observable
  bool pinCodeValidate = false;

  @action
  void changePinCode(String value){
    pinCode = value;
  }

  @action
  void changePinCodeFeedback(String value){
    pinCodeFeedback = value;
  }

  @action
  void changePinCodeValidate(bool value){
    pinCodeValidate = value;
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
  String speciality = "";



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

  @observable
  bool checkTerm = false;

  @action
  void changeTerm(bool value){
    checkTerm = !checkTerm;
  }


  Future<void> sendEmailCode() async{

    dynamic data = await EmailValidatorRepository().sendEmailCode(email);
    changePintRecerved(data["results"]["token"]);
  }

  Future<void> sendCodeValidation() async{
    dynamic data = await EmailValidatorRepository().sendCodeVerification(email, pinCode);
    if(data!=null && data["results"]=="Sucesso"){
      changePinCodeValidate(true);
      changePinCodeFeedback("Código Válido");
      Modular.to.pushReplacementNamed("/Category");
    }else
      {
        changePinCodeValidate(true);
        changePinCodeFeedback("Código Inválido");
      }
  }

  Future<void> saveData() async{

    SharedLocalStorageService storage = SharedLocalStorageService();
    Map<String,String> typeActivits ={
      "Posts para Redes Sociais":"20",
      "Discussão de Casos Clínicos e Aulas":"21",
      "Trabalhos Científicos":"22",
      "Mentoria sobre Carreira Médica":"23",
      "Acompanhar Rotina Médica":"24"
    };

    List<Map<String,String>> activitsSelect = activities.map((element){
      return
        {
        "tipo": typeActivits[element],
        "atividade": element.toString()
      };
    }).toList();

    List<Map<String,String>> saveInteresting =
    [{
      "especialidade": speciality,
      "graduacao": graduation,
      "tipo": typeSearch,
      "cidade": locationCity,
      "estado": locationState
    }];

   dynamic user = jsonEncode(
       {
         "nome": username,
         "instagram":instagram,
         "email": email,
         "senha": password,
         "data": TimeConvert().convertDateTimeToString(DateTime.now()),
         "cod": pinRecerved,
         "sobre":"Alguma coisa",
         "situacao": "teste situacao",
         "dispositivo": Platform.isAndroid? "Android" : "Ios",
         "especialidade": speciality,
         "graduacao": graduation,
         "tipo": typeSearch,
         "cidade": locationCity,
         "estado": locationState,
         "interesses": saveInteresting,
         "atividades": activitsSelect
       });

   dynamic data = await UserRepository().insert(user);
   dynamic recoverData = await UserRepository().get(email, password);

    UserModel model = UserModel.fromMap(recoverData["results"]);
    List<dynamic> newActivities = model.atividades.map((element) {
      return element.atividade.toString();
    }).toList();
    var list = newActivities.cast<String>().toList();

   await storage.saveDataLocal(model, email, password, list);

   if(data!=null){
     Modular.to.pushNamed("/Tutorial");
   }

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
  ObservableList<UfModel> ufs;

  @observable
  ObservableList<CityModel> cities;

  @observable
  ObservableList<String>ufsString;

  @observable
  ObservableList<String>citiesString;

  @computed
  List<String> get citiesComputed {

    if(cities==null){
      return [];
    }
    return cities.map((e) => e.nome).toList();
  }

  @action
  void cleanListCities(){
    citiesString = null;
  }

 
  @action
  Future<void> getUF() async{
    if(ufs!=null) {
      ufs.clear();
    }
     List<UfModel> newUFs = [];
     dynamic data = await  LocationRepository().getUF();
     if(data!=null) {
       for(dynamic value in data){
         UfModel model  = UfModel.fromMap(value);
         newUFs.add(model);
       }
     }
     ufs = newUFs.asObservable();
     transformUfList();
  }

  @action
  void transformUfList(){
    ufsString = ufs.map((e) => e.nome).toList().asObservable();
  }

  @action
  void transformCityList(){
    citiesString = cities.map((e) => e.nome).toList().asObservable();
  }

  @action
  Future<void> getCities(String id) async{
    if(cities!=null) {
      cities.clear();
    }
    dynamic data = await  LocationRepository().getCity(id);
    List<CityModel> newCities = [];
    if(data!=null) {
      for (dynamic value in data) {
        CityModel model = CityModel.fromMap(value);
        newCities.add(model);
      }
    }
    cities = newCities.asObservable();
    transformCityList();
  }

  @action
  Future<void> checkEmailUser()async{
    dynamic data = await UserRepository().checkEmail(email);
    if(data!=null){
      updateEmailFeedBack("Email em uso : |");
      changeEmailValidator(true);
    }else{
      updateEmailFeedBack("");
      changeEmailValidator(false);
      Modular.to.pushNamed("/CheckEmail");
      changeLoading(false);
    }
  }

}
