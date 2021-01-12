

import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/modules/profile/edit_profile/components/checkbox_programs_widget.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/text_map.dart';

class ListProgramsViewModel{



  List<CheckBoxProgramsWidget> createListCheckBox(List<Atividade> activities){
    List<CheckBoxProgramsWidget> newList =[];
    TextMap.textPrograms.forEach((key, value) {
      final newCheckBox = CheckBoxProgramsWidget(controller: CheckboxController(title: value,check: activities.map((e) => e.atividade).toList().contains(value)),color:kCheck,);
      newList.add(newCheckBox);
    });
    return newList;
  }


}