
import 'package:PadrinhoMED/app/models/city_model.dart';
import 'package:PadrinhoMED/app/models/uf_model.dart';
import 'package:PadrinhoMED/app/repositories/location_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'dialog_location_filter_controller.g.dart';

@Injectable()
class DialogLocationFilterController = _DialogLocationFilterControllerBase
    with _$DialogLocationFilterController;

abstract class _DialogLocationFilterControllerBase with Store {


  _DialogLocationFilterControllerBase({
    this.state,this.city,
    this.changeState,this.changeCity,
    this.validateCityAndState,
    this.loadFilter,
    this.buttonActivate,
    this.changeButtonActivate,
    this.ufs,this.cities});

  @observable
  String state;

  @observable
  String city;

  @observable
  bool buttonActivate;

  @observable
  ObservableList<UfModel> ufs;

  @observable
  ObservableStream<List<CityModel>> cities;

  @observable
  Function changeState;

  @observable
  Function changeCity;

  @observable
  Function changeButtonActivate;

  @observable
  Function validateCityAndState;

  @observable
  String cityValidate = "";

  @observable
  Function loadFilter;

  @action
  bool checkValidate(List<CityModel> list){
    try{

      if(city.isEmpty && state.isEmpty){
        return true;
      }
      ufs.singleWhere((element) => element.nome==state);

      if(list!=null && city.isEmpty){
        return true;
      }

      if(list!=null && city.isNotEmpty){
        list.singleWhere((element) => element.nome==city);
        return true;
      }

      return true;
    }catch(e){
      return false;
    }
  }

  @action
  Future<void> getCity(UfModel model) async{
    cities = LocationRepository(id: model.id.toString()).cities.asObservable().asBroadcastStream();
  }
}
