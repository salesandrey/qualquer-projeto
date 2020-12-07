// To parse this JSON data, do
//
//     final userModel = userModelFromMap(jsonString);

import 'dart:convert';

class UserModel {
  UserModel({
    this.nome,
    this.email,
    this.senha,
    this.data,
    this.cod,
    this.sobre,
    this.situacao,
    this.dispositivo,
    this.especialidade,
    this.graduacao,
    this.tipoInteresse,
    this.cidade,
    this.estado,
    this.atividades,
  });

  final String nome;
  final String email;
  final String senha;
  final DateTime data;
  final String cod;
  final String sobre;
  final String situacao;
  final String dispositivo;
  final String especialidade;
  final String graduacao;
  final String tipoInteresse;
  final String cidade;
  final String estado;
  final List<Atividade> atividades;

  UserModel copyWith({
    String nome,
    String email,
    String senha,
    DateTime data,
    String cod,
    String sobre,
    String situacao,
    String dispositivo,
    String especialidade,
    String graduacao,
    String tipoInteresse,
    String cidade,
    String estado,
    List<Atividade> atividades,
  }) =>
      UserModel(
        nome: nome ?? this.nome,
        email: email ?? this.email,
        senha: senha ?? this.senha,
        data: data ?? this.data,
        cod: cod ?? this.cod,
        sobre: sobre ?? this.sobre,
        situacao: situacao ?? this.situacao,
        dispositivo: dispositivo ?? this.dispositivo,
        especialidade: especialidade ?? this.especialidade,
        graduacao: graduacao ?? this.graduacao,
        tipoInteresse: tipoInteresse ?? this.tipoInteresse,
        cidade: cidade ?? this.cidade,
        estado: estado ?? this.estado,
        atividades: atividades ?? this.atividades,
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    nome: json["nome"],
    email: json["email"],
    senha: json["senha"],
    data: DateTime.parse(json["data"]),
    cod: json["cod"],
    sobre: json["sobre"],
    situacao: json["situacao"],
    dispositivo: json["dispositivo"],
    especialidade: json["especialidade"],
    graduacao: json["graduacao"],
    tipoInteresse: json["tipoInteresse"],
    cidade: json["cidade"],
    estado: json["estado"],
    atividades: List<Atividade>.from(json["atividades"].map((x) => Atividade.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "nome": nome,
    "email": email,
    "senha": senha,
    "data": "${data.year.toString().padLeft(4, '0')}-${data.month.toString().padLeft(2, '0')}-${data.day.toString().padLeft(2, '0')}",
    "cod": cod,
    "sobre": sobre,
    "situacao": situacao,
    "dispositivo": dispositivo,
    "especialidade": especialidade,
    "graduacao": graduacao,
    "tipoInteresse": tipoInteresse,
    "cidade": cidade,
    "estado": estado,
    "atividades": List<dynamic>.from(atividades.map((x) => x.toMap())),
  };
}

class Atividade {
  Atividade({
    this.tipo,
    this.atividade,
  });

  final String tipo;
  final String atividade;

  Atividade copyWith({
    String tipo,
    String atividade,
  }) =>
      Atividade(
        tipo: tipo ?? this.tipo,
        atividade: atividade ?? this.atividade,
      );

  factory Atividade.fromJson(String str) => Atividade.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Atividade.fromMap(Map<String, dynamic> json) => Atividade(
    tipo: json["tipo"],
    atividade: json["atividade"],
  );

  Map<String, dynamic> toMap() => {
    "tipo": tipo,
    "atividade": atividade,
  };
}
