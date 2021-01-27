import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/searching/long_card/long_card_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/long_card/long_card_page.dart';
import 'package:PadrinhoMED/app/repositories/filter_repository.dart';
import 'package:PadrinhoMED/app/repositories/location_repository.dart';
import 'package:PadrinhoMED/app/utils/color_map.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_filtered_controller.g.dart';

@Injectable()
class HomeFilteredController = _HomeFilteredControllerBase
    with _$HomeFilteredController;

abstract class _HomeFilteredControllerBase with Store implements Disposable {

  @observable
  bool premium = false;

  @action
  void changePremium(bool value){
    premium = value;
  }

  @observable
  int idUser;

  @action
  void changeUserID(int value){
    idUser = value;
  }


  @observable
  bool loading = true;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  ObservableList<LongCard> programs;

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

  @observable
  String state = "";

  @action
  void changeState(String value){
    state = value;
  }

  @action
  void changeStateAndCity(String value){
    getCity(ufs.firstWhere((element) => element.nome == value,orElse: () => UfModel(id: 400,sigla: "")));
    changeStateDialog(value);
  }

  @observable
  String city = "";

  @action
  void changeCity(String value){
    city = value;
  }

  @observable
  bool activateButton = false;

  @action
  void changeActivateButton(bool value){
    activateButton = !value;
  }

  @observable
  String stateDialog;

  @action
  void changeStateDialog(String value){
    stateDialog = value;
    changeActivateButton(false);
  }

  @observable
  String cityDialog;

  @action
  void changeCityDialog(String value){
    cityDialog = value;
    changeActivateButton(false);
  }


  @action
  void removePrograms(String value){
    programs.removeWhere((element) => element.controller.title==value);
    getUsersFiltered();
  }

  @observable
  ObservableList<LongCard> specialities;

  @action
  void removeSpecialities(String value){
    specialities.removeWhere((element) => element.controller.title==value);
    getUsersFiltered();
  }

  @observable
  ObservableList<LongCard> graduations;

  @action
  void removeGraduations(String value){
    graduations.removeWhere((element) => element.controller.title==value);
    getUsersFiltered();
  }

  @observable
  LongCard nameOrInstagram;

  @action
  void removeNameOrInstagram(){
    nameOrInstagram = null;
  }

  @action
  Future<void> initLongCards({String name,List<String> graduation,List<String> program,List<String> speciality}) async{

    if(graduation.isNotEmpty) {
      graduations = graduation.map((e) =>
          LongCard(
              colorFilter: ColorMap.filterColor["specialist"],
              colorText: ColorMap.filterColorText["specialist"],
              colorBorder: ColorMap.filterColorBorder["specialist"],
              removeElement:(){removeGraduations(e);},controller: LongCardController(title: e))).toList().asObservable();
    }

    if(speciality.isNotEmpty) {
      specialities = speciality.map((e) =>
          LongCard(
              colorFilter: ColorMap.filterColor["specialist"],
              colorText: ColorMap.filterColorText["specialist"],
              colorBorder: ColorMap.filterColorBorder["specialist"],
              removeElement: () {
            removeSpecialities(e);
          }, controller: LongCardController(title: e))).toList().asObservable();
    }

    if(program.isNotEmpty) {
      programs = program.map((e) =>
          LongCard(
              colorFilter: ColorMap.filterColor["programs"],
              colorText: ColorMap.filterColorText["programs"],
              colorBorder: ColorMap.filterColorBorder["programs"],
              removeElement: () {
            removePrograms(e);
          }, controller: LongCardController(title: e))).toList().asObservable();
    }

    if(name!=null && name!=""){
      nameOrInstagram = LongCard(
          colorFilter: ColorMap.filterColor["specialist"],
          colorText: ColorMap.filterColorText["specialist"],
          colorBorder: ColorMap.filterColorBorder["specialist"],
        removeElement: removeNameOrInstagram,controller: LongCardController(title: name)
      );
    }
    changeLoading(false);
  }


  @observable
  ObservableStream<List<UserMatchModel>> usersFiltered;

  @action
  Future<void> getUsersFiltered() async{

    String email = "";
    String instagram = "";
    List<Map<String, String>> specialitiesFiltered = [];
    List<Map<String, String>> graduationsFiltered = [];
    List<Map<String, String>> activitsFiltered = [];

    if(nameOrInstagram!=null) {
      if (nameOrInstagram.controller.title.startsWith("@")) {
        instagram = nameOrInstagram.controller.title;
      }else{
        email = nameOrInstagram.controller.title;
      }
    }

    if(specialities!=null && specialities.isNotEmpty) {
      specialitiesFiltered = specialities.map((
          element) => {"especialidade": element.controller.title}).toList();
    }

    if(programs!=null && programs.isNotEmpty) {
      activitsFiltered = programs.map((
          element) => {"atividade": element.controller.title}).toList();
    }

    if(graduations!=null && graduations.isNotEmpty){
      graduationsFiltered = graduations.map((
          element) => {"graduacao": element.controller.title}).toList();
    }

    usersFiltered = FilterRepository(
      idUser: idUser,
      activits: activitsFiltered,
      email: email,
      instagram: instagram,
      state: state,
      city: city,
      type: "filtroGeral",
      speciality: specialitiesFiltered,
      graduations: graduationsFiltered,
    ).usersFiltered.asObservable().asBroadcastStream();
  }

  @override
  void dispose() {

  }
}
