import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'on_boarding_controller.g.dart';

@Injectable()
class OnBoardingController = _OnBoardingControllerBase
    with _$OnBoardingController;

abstract class _OnBoardingControllerBase with Store {

  @observable
  String username = "";

  @action
  void changeName(String value){
    username = value;
  }

  Future<void> getName() async{

  }
}
