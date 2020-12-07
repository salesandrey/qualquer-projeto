import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'checkbox_controller.g.dart';

@Injectable()
class CheckboxController = _CheckboxControllerBase with _$CheckboxController;

abstract class _CheckboxControllerBase with Store {


  _CheckboxControllerBase({this.title,this.check});

    @observable
    String title;

    @observable
    bool check = false;

    @action
    void changeTitle(String value){
      title = value;
    }

    @action
    setCheck(bool value){
      check = value;
    }

}
