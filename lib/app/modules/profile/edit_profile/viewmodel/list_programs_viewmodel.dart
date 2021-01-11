

import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/text_map.dart';

class ListProgramsViewModel{



  List<CheckBoxWidget> createListCheckBox(List<Atividade> activities){
    List<CheckBoxWidget> newList =[];
    TextMap.textPrograms.forEach((key, value) {
      final newCheckBox = CheckBoxWidget(controller: CheckboxController(title: value,check: activities.contains(value)),color:kCheck,);
      newList.add(newCheckBox);
    });
    return newList;
  }


}