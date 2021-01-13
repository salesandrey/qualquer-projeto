import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/repositories/filter_repository.dart';
import 'package:PadrinhoMED/app/repositories/list_user_repository.dart';
import 'package:PadrinhoMED/app/repositories/location_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';
part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = false;
  }

  @observable
  bool premium = false;

  @observable
  bool activateButton = false;

  @action
  void changeActivateButton(bool value){
    activateButton = !value;
  }

  @action
  void changePremium(bool value){
    premium = value;
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


  @observable
  ObservableStream favorites;

  @observable
  bool updateFavorite = false;

  @action
  void changeUpdateFavorite(bool value){
    updateFavorite = value;
  }

  @action
  Future<void> initStream() async{
    favorites = FavoriteRepository(userID: currentUser.id).loadingFavorites.asObservable().asBroadcastStream();
  }

  @observable
  ObservableList<int> currentFavorites;

  @action
  Future<void> resultFavorites(List<dynamic> list) async{

    List<int> newElements = [];
    for(dynamic element in list){
      int model  = element["id"];
      newElements.add(model);
    }
    currentFavorites = newElements.asObservable();
  }

  bool checkFavorite(int id){
    if(currentFavorites.contains(id))
      return true;
    return false;
  }

  @observable
  ObservableList<UserMatchModel> users;

  @observable
  List<UserMatchModel> mostIndication;

  @observable
  List<UserMatchModel> recentUsers;
  
  @observable
  UserModel currentUser = UserModel();

  @action
  void loadingCurrentUser(UserModel model){
    currentUser = model;
    state = model.estado;
    city = model.cidade;
    cityDialog = model.cidade;
    stateDialog = model.estado;
  }

  @observable
  String filter = "Médico Graduado";

  @action
  void changeFilter(String value){
    filter = value;
  }

  @computed
  List<UserMatchModel> get sameSpecialty{
    if(users.isEmpty){
      return [];
    }else {
      return users.where((element)=>identical(currentUser.especialidade,element.especialidade)).toList();
    }
  }

  @computed
  List<UserMatchModel> get sameLocation{
    if(users.isEmpty){
      return [];
    }else {
      return users.where((element)=>identical(currentUser.estado, element.estado)).toList();
    }
  }

  @computed
  List<UserMatchModel> get listFiltered{
    if(users.isEmpty){
      return [];
    }else {
      return users.where((element)=> element.graduacao==filter).toList();
    }
  }

  @action
  void addUser(UserMatchModel user){
    users.add(user);
  }

  @action
  void removeUser(UserMatchModel user){
    users.removeWhere((element) => element == user);
  }


  @action
  void clearUsers(){
    if(users!=null) {
      users.clear();
    }
  }

  List<T> intersection<T>(Iterable<T> a, Iterable<T> b) {
    final s = b.toSet();
    return a.toSet().where((x) => s.contains(x)).toList();
  }

  Future<void> getUsers() async{
    if(users!=null){
     clearUsers();
    }
    dynamic data = await ListUserRepository().get(currentUser.id.toString());
    List<UserMatchModel> newList =[];
    if(data!=null){
      for(dynamic value in data["results"]){
      UserMatchModel model  = UserMatchModel.fromMap(value);
      newList.add(model);
      }
    }
    users = newList.asObservable();
  }

  @action
  Future<void> getMostIndication() async{
    dynamic data = await FilterRepository().filter(
    type:"maisIndicados",
    city: premium?city:"",
    state: premium?state:"",
    idUser: currentUser.id,
    speciality: [{"especialidade":currentUser.graduacao}],
    email: "",
    instagram: "",
    graduations: [{"graduacao":""}]
    );
    List<UserMatchModel> newList =[];
    if(data!=null){
      for(dynamic value in data["results"]){
        UserMatchModel model  = UserMatchModel.fromMap(value);
        newList.add(model);
      }
    }
    mostIndication = newList.asObservable();

  }

  @action
  Future<void> getRecentUsers() async{
    dynamic data = await FilterRepository().filter(
      idUser: currentUser.id,
        city: premium?city:"",
        state: premium?state:"",
        type: "novosUsuarios",
        graduations:[{"graduacao":""}],
        instagram: "",
        email: "",
        speciality: [{"especialidade":""}]
    );

    List<UserMatchModel> newList =[];
    if(data!=null){
      for(dynamic value in data["results"]){
        UserMatchModel model  = UserMatchModel.fromMap(value);
        newList.add(model);
      }
    }
    recentUsers = newList.asObservable();

  }

  Future<void> getCurrentUser() async {

    ILocalStorage storage = SharedLocalStorageService();
    String id = await storage.get("id");
    String data = await storage.get("data");
    String name = await storage.get("name");
    String city = await storage.get("city");
    String state = await storage.get("state");
    String speciality = await storage.get("speciality");
    String graduation = await storage.get("graduation");
    String typeSearch = await storage.get("typeSearch");

    UserModel user = UserModel(
        id: toInt(id),
        nome: name,
        cidade: city,
        estado: state,
        data: DateTime.parse(data),
        especialidade: speciality,
        graduacao: graduation,
        tipo: typeSearch
    );

    loadingCurrentUser(user);
  }

  void loadingStates(){
    getUF();
  }

}
