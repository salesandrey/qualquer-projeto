import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/repositories/favorite_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';
part 'navigator_controller.g.dart';

@Injectable()
class NavigatorController = _NavigatorControllerBase with _$NavigatorController;

abstract class _NavigatorControllerBase with Store implements Disposable {


  @observable
  PageController pageController = PageController(initialPage: 0);

  @action
  void changePage(int index){
    pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    pageController.dispose();
  }

}
