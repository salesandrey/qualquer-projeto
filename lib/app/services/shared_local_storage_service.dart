import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLocalStorageService implements ILocalStorage{

  @override
  Future delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    shared.remove(key);
  }

  @override
  Future get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future put(String key, value) async {
    var shared = await SharedPreferences.getInstance();

    if(value is bool){
      shared.setBool(key,value);
    }
    else if(value is List){
      shared.setStringList(key, value);
    }
    else{
      shared.setString(key,value);
    }
  }

  @override
  Future<bool> contains(String key) async {
    var shared = await SharedPreferences.getInstance();
    if(shared.containsKey(key))
      return true;
    return false;
  }

  Future<void> saveDataLocal(UserModel model,String email,String password,List<String> list) async{
    put("id", model.id.toString());
    put("email", email);
    put("password", password);
    put("name", model.nome);
    put("data", model.data.toString());
    put("about", model.sobre);
    put("speciality", model.especialidade);
    put("graduation", model.graduacao);
    put("typeSearch", model.tipo);
    put("city", model.cidade);
    put("state", model.estado);
    put("instagram", model.instagram);
    put("activities",list);
  }
}