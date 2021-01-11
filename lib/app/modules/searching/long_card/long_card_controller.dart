import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'long_card_controller.g.dart';

@Injectable()
class LongCardController = _LongCardControllerBase with _$LongCardController;

abstract class _LongCardControllerBase with Store {

  _LongCardControllerBase({this.title,this.removeElement});

  @observable
  String title;

  @observable
  Function removeElement;
}
