
import 'package:PadrinhoMED/app/models/user_model.dart';
import 'package:PadrinhoMED/app/modules/match/components/card_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  @observable
  ObservableList users = [].asObservable();

  @observable
  UserModel currentUser = UserModel();

  @observable
  String filter = "";

  @computed
  List<UserModel> get recentUsers{
    if(users.isEmpty){
      return [];
    }else {
      return users.where((element) {
        if(DateTime.now().difference(element.data).inDays < 7) {
          return true;
        }else{
          return false;
        }
      }).toList();
    }
  }

  @computed
  List<UserModel> get mostIndication{
    if(users.isEmpty){
      return [];
    }else {
      users.sort((a,b)=>a.atividades.length.compareTo(b.atividades.length));
      return users.where((element)=> intersection(element.atividades, currentUser.atividades).isNotEmpty).toList();
    }
  }

  @computed
  List<UserModel> get sameSpecialty{
    if(users.isEmpty){
      return [];
    }else {
      return users.where((element)=>identical(currentUser.especialidade,element.especialidade)).toList();
    }
  }

  @computed
  List<UserModel> get sameLocation{
    if(users.isEmpty){
      return [];
    }else {
      return users.where((element)=>identical(currentUser.estado, element.estado)).toList();
    }
  }

  @computed
  List<UserModel> get listFiltered{
    if(users.isEmpty){
      return [];
    }else {
      return users.where((element)=>identical(element.graduacao,filter)).toList();
    }
  }

  @action
  void addUser(UserModel user){
    users.add(user);
  }

  @action
  void removeUser(UserModel user){
    users.removeWhere((element) => element == user);
  }

  List<T> intersection<T>(Iterable<T> a, Iterable<T> b) {
    final s = b.toSet();
    return a.toSet().where((x) => s.contains(x)).toList();
  }

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  final Map<String,Color> colorCard = {
    "Estudante":Color(0xFFED7AA0),
    "Interno":Color(0xFFA652B7),
    "Graduado":Color(0xFF6AA4E8),
    "Residente":Color(0xFF3FBAA3),
    "Especialista":Color(0xFFFFBE69)
  };

  List<CardProfile> students = [
    CardProfile(
      colorCard: Color(0xFFED7AA0),
      head: "Victor J",
      title: "Pediatria",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFED7AA0),
    ),
    CardProfile(
      colorCard: Color(0xFFED7AA0),
      head: "Juliana L.",
      title: "Pediatria",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais","Casos e Aulas","Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFED7AA0),

    ),
    CardProfile(
      colorCard: Color(0xFFED7AA0),
      head: "Flavia J.",
      title: "Pediatria",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFED7AA0),
    ),
    CardProfile(
      colorCard: Color(0xFFED7AA0),
      head: "Andrey S.",
      title: "Pediatria",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFED7AA0),
    ),
    CardProfile(
      colorCard: Color(0xFFED7AA0),
      head: "Luiz Gomes",
      title: "Pediatria",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFFED7AA0),
    ),
  ];


  List<CardProfile> intern = [
    CardProfile(
      colorCard: Color(0xFFA652B7),
      head: "Fernando",
      title: "G.O",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais"],
      colorIconTitle: Color(0xFFA652B7),
    ),
    CardProfile(
      colorCard: Color(0xFFA652B7),
      head: "Victor J",
      title: "Cardiologista",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais","Mentoria Carreira"],
      colorIconTitle: Color(0xFFA652B7),

    ),
    CardProfile(
      colorCard: Color(0xFFA652B7),
      head: "Flavia J.",
      title: "Dermatologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFA652B7),
    ),
    CardProfile(
      colorCard: Color(0xFFA652B7),
      head: "Andrey S.",
      title: "Epidemiologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFA652B7),
    ),
    CardProfile(
      colorCard: Color(0xFFA652B7),
      head: "Luiz Gomes",
      title: "Cirurgia Plástica",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFFA652B7),
    ),
  ];

  List<CardProfile> graduations = [
  CardProfile(
  colorCard: Color(0xFF6AA4E8),
  head: "Luiz Gomes",
  title: "Genética Médica",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
  iconTitle: "Atividades de Interesse",
  activits: ["Redes Sociais"],
  colorIconTitle: Color(0xFF6AA4E8),
  ),
  CardProfile(
  colorCard: Color(0xFF6AA4E8),
  head: "Victor J",
  title: "Infectologia",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
  iconTitle: "Atividades de Interesse",
  activits: ["Mentoria Carreira"],
  colorIconTitle: Color(0xFF6AA4E8),
  ),
  CardProfile(
  colorCard: Color(0xFF6AA4E8),
  head: "Rafael Gonçalves",
  title: "Medicina Intensiva",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
  iconTitle: "Atividades de Interesse",
  activits: ["Rotina Médica"],
  colorIconTitle: Color(0xFF6AA4E8),
  ),
  CardProfile(
  colorCard: Color(0xFF6AA4E8),
  head: "Andrey S.",
  title: "Oftalmologia",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
  iconTitle: "Atividades de Interesse",
  activits: ["Trabalho Científico","Rotina Médica"],
  colorIconTitle: Color(0xFF6AA4E8),
  ),
  CardProfile(
  colorCard: Color(0xFF6AA4E8),
  head: "Luiz Gomes",
  title: "Cirurgia Crânio-Maxilo-Facial",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
  iconTitle: "Atividades de Interesse",
  activits: ["Mentoria Carreira"],
  colorIconTitle: Color(0xFF6AA4E8),
  ),
  ];

  List<CardProfile> residents = [
    CardProfile(
      colorCard: Color(0xFF3FBAA3),
      head: "Victor J",
      title: "Densitometria Óssea",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFF3FBAA3),
    ),
    CardProfile(
      colorCard: Color(0xFF3FBAA3),
      head: "Juliana L.",
      title: "Gastroenterologia Pediátrica",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais","Casos e Aulas","Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFF3FBAA3),

    ),
    CardProfile(
      colorCard: Color(0xFF3FBAA3),
      head: "Flavia J.",
      title: "Neurologia Pediátrica",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFF3FBAA3),
    ),
    CardProfile(
      colorCard: Color(0xFF3FBAA3),
      head: "Andrey S.",
      title: "Medicina do Sono",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico"],
      colorIconTitle: Color(0xFF3FBAA3),
    ),
    CardProfile(
      colorCard: Color(0xFF3FBAA3),
      head: "Luiz Gomes",
      title: "Sexologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFF3FBAA3),
    ),
  ];

  List<CardProfile> specialists = [
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Victor J",
      title: "Densitometria Óssea",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Juliana L.",
      title: "Gastroenterologia Pediátrica",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais","Casos e Aulas","Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),

    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Flavia J.",
      title: "Neurologia Pediátrica",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Andrey S.",
      title: "Medicina do Sono",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Luiz Gomes",
      title: "Sexologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Luiz Gomes",
      title: "Genética Médica",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Victor J",
      title: "Infectologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFF6AA4E8),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Rafael Gonçalves",
      title: "Medicina Intensiva",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Rotina Médica"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Andrey S.",
      title: "Oftalmologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico","Rotina Médica"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Luiz Gomes",
      title: "Cirurgia Crânio-Maxilo-Facial",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Fernando",
      title: "G.O",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Victor J",
      title: "Cardiologista",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais","Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),

    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Flavia J.",
      title: "Dermatologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Andrey S.",
      title: "Epidemiologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Luiz Gomes",
      title: "Cirurgia Plástica",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
  ];

  List<CardProfile> mostIndicationCards = [
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Andrey S.",
      title: "Medicina do Sono",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Trabalho Científico"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFFA652B7),
      head: "Flavia J.",
      title: "Dermatologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFA652B7),
    ),
  ];
  List<CardProfile> needHelp = [
    CardProfile(
      colorCard: Color(0xFFED7AA0),
      head: "Victor J",
      title: "Pediatria",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Redes Sociais","Rotina Médica","Mentoria Carreira"],
      colorIconTitle: Color(0xFFED7AA0),
    ),
    CardProfile(
      colorCard: Color(0xFFED7AA0),
      head: "Luiz Gomes",
      title: "Pediatria",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFFED7AA0),
    ),
    CardProfile(
      colorCard: Color(0xFFFFBE69),
      head: "Rafael Gonçalves",
      title: "Medicina Intensiva",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Rotina Médica"],
      colorIconTitle: Color(0xFFFFBE69),
    ),
    CardProfile(
      colorCard: Color(0xFF6AA4E8),
      head: "Victor J",
      title: "Infectologia",
      content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut feugiat est, elementum volutpat nisl. Aliquam tristique rutrum tellus eget egestas. In hac habitasse platea dictumst. Fusce accumsan volutpat velit, sit amet ultrices dolor rutrum non. Morbi consectetur tortor erat, nec pulvinar erat tincidunt eu.",
      iconTitle: "Atividades de Interesse",
      activits: ["Mentoria Carreira"],
      colorIconTitle: Color(0xFF6AA4E8),
    ),
  ];
}
