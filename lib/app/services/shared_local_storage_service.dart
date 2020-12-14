import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
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
}