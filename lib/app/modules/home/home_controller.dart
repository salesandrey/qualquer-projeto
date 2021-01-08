import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/repositories/filter_repository.dart';
import 'package:PadrinhoMED/app/repositories/list_user_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';
part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

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
    String speciality = await storage.get("speciality");
    String graduation = await storage.get("graduation");
    String typeSearch = await storage.get("typeSearch");

    UserModel user = UserModel(
        id: toInt(id),
        nome: name,
        data: DateTime.parse(data),
        especialidade: speciality,
        graduacao: graduation,
        tipo: typeSearch
    );

    loadingCurrentUser(user);
  }
}
