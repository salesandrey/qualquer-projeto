

import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';

class ListOptionViewModel{



  List<String> checkOptions(List<CheckBoxWidget> listToFilter){
    List<String> elementsSelected = [];
    for(CheckBoxWidget element in listToFilter){
      if(element.controller.check){
        elementsSelected.add(element.controller.title);
      }
    }
    return elementsSelected;
  }

  List<CheckBoxWidget> createListCheckBox(List<String> optionsToCreate){
    List<CheckBoxWidget> newList =[];
    for(String element in optionsToCreate){
      final newCheckBox = CheckBoxWidget(controller: CheckboxController(title: element,check: false),color:kCheck,);
      newList.add(newCheckBox);
    }
    return newList;
  }
}