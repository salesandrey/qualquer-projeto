import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_controller.dart';
import 'package:PadrinhoMED/app/modules/searching/components/checkbox/checkbox_widget.dart';
import 'package:PadrinhoMED/app/modules/searching/viewmodel/list_option_viewmodel.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'searching_controller.g.dart';

@Injectable()
class SearchingController = _SearchingControllerBase with _$SearchingController;

abstract class _SearchingControllerBase with Store {

  @observable
  ObservableList<UserModel> users = [UserModel()].asObservable();

  List<String> programsText = [
    "Posts para Redes Sociais",
    "Discussão de Casos Clínicos e Aulas",
    "Trabalhos Científicos",
    "Acompanhar Rotina Médica",
    "Mentoria sobre Carreira Médica"
  ];

  List<String> specialitsText =[
    "Clinica",
    "Pediatria",
    "Cirurgia",
    "Ginecologia e Obstetrícia",
    "As especialidades + legais"
  ];

  @observable
  ObservableList<CheckBoxWidget> listGraduation = [
    CheckBoxWidget(controller: CheckboxController(title:"Estudantes 1º a 8º semestre",check: false),color:Color(0xFFED7AA0)),
    CheckBoxWidget(controller: CheckboxController(title:"Internato 9º a 12º semestre",check: false),color:Color(0xFFA652B7)),
    CheckBoxWidget(controller: CheckboxController(title:"Médicos Graduados",check: false),color:Color(0xFF6AA4E8)),
    CheckBoxWidget(controller: CheckboxController(title:"Residentes / Em Especialização",check: false),color:Color(0xFF3FBAA3)),
    CheckBoxWidget(controller: CheckboxController(title:"Especialista",check: false),color:Color(0xFFFFBE69)),
  ].asObservable();

  @observable
  ObservableList<CheckBoxWidget> programs;

  @observable
  ObservableList<CheckBoxWidget> specialits;

  @computed
  List<UserModel> get userFiltered{
    if(users.isEmpty){return [];} else {

      List<UserModel> usersFiltered = [];

      usersFiltered = users.where((element) {
        List<String> elementsSelected = ListOptionViewModel().checkOptions(
            listGraduation);
        return elementsSelected.contains(element.nome);
      });

      usersFiltered = users.where((element) {
        List<String> elementsSelected = ListOptionViewModel().checkOptions(
            programs);
        return elementsSelected.contains(element.nome);
      });

      usersFiltered = users.where((element) {
        List<String> elementsSelected = ListOptionViewModel().checkOptions(specialits);
        return elementsSelected.contains(element.nome);
      });
      return usersFiltered.toList();
    }
  }

  Future<void> addProgramsToList() async{
    programs =  ListOptionViewModel().createListCheckBox(programsText).asObservable();
    specialits = ListOptionViewModel().createListCheckBox(specialitsText).asObservable();
  }
}
