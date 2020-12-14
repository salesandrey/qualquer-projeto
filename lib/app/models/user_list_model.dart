// To parse this JSON data, do
//
//     final userMatchModel = userMatchModelFromMap(jsonString);

import 'dart:convert';

class UserMatchModel {
  UserMatchModel({
    this.id,
    this.nome,
    this.email,
    this.data,
    this.cod,
    this.sobre,
    this.situacao,
    this.dispositivo,
    this.especialidade,
    this.graduacao,
    this.tipo,
    this.cidade,
    this.estado,
    this.instagram,
    this.interesses,
    this.atividades,
  });

  final int id;
  final String nome;
  final String email;
  final DateTime data;
  final String cod;
  final String sobre;
  final String situacao;
  final String dispositivo;
  final String especialidade;
  final String graduacao;
  final String tipo;
  final String cidade;
  final String estado;
  final String instagram;
  final List<Interess> interesses;
  final List<Atividade> atividades;

  UserMatchModel copyWith({
    int id,
    String nome,
    String email,
    DateTime data,
    String cod,
    String sobre,
    String situacao,
    String dispositivo,
    String especialidade,
    String graduacao,
    String tipo,
    String cidade,
    String estado,
    String instagram,
    List<Interess> interesses,
    List<Atividade> atividades,
  }) =>
      UserMatchModel(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        email: email ?? this.email,
        data: data ?? this.data,
        cod: cod ?? this.cod,
        sobre: sobre ?? this.sobre,
        situacao: situacao ?? this.situacao,
        dispositivo: dispositivo ?? this.dispositivo,
        especialidade: especialidade ?? this.especialidade,
        graduacao: graduacao ?? this.graduacao,
        tipo: tipo ?? this.tipo,
        cidade: cidade ?? this.cidade,
        estado: estado ?? this.estado,
        instagram: instagram ?? this.instagram,
        interesses: interesses ?? this.interesses,
        atividades: atividades ?? this.atividades,
      );

  factory UserMatchModel.fromJson(String str) => UserMatchModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserMatchModel.fromMap(Map<String, dynamic> json) => UserMatchModel(
    id: json["id"],
    nome: json["nome"],
    email: json["email"],
    data: DateTime.parse(json["data"]),
    cod: json["cod"],
    sobre: json["sobre"],
    situacao: json["situacao"],
    dispositivo: json["dispositivo"],
    especialidade: json["especialidade"],
    graduacao: json["graduacao"],
    tipo: json["tipo"],
    cidade: json["cidade"],
    estado: json["estado"],
    instagram: json["instagram"],
    interesses: List<Interess>.from(json["interesses"].map((x) => Interess.fromMap(x))),
    atividades: List<Atividade>.from(json["atividades"].map((x) => Atividade.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nome": nome,
    "email": email,
    "data": "${data.year.toString().padLeft(4, '0')}-${data.month.toString().padLeft(2, '0')}-${data.day.toString().padLeft(2, '0')}",
    "cod": cod,
    "sobre": sobre,
    "situacao": situacao,
    "dispositivo": dispositivo,
    "especialidade": especialidade,
    "graduacao": graduacao,
    "tipo": tipo,
    "cidade": cidade,
    "estado": estado,
    "instagram": instagram,
    "interesses": List<dynamic>.from(interesses.map((x) => x.toMap())),
    "atividades": List<dynamic>.from(atividades.map((x) => x.toMap())),
  };
}

class Atividade {
  Atividade({
    this.id,
    this.idUsuario,
    this.atividade,
    this.tipo,
  });

  final int id;
  final int idUsuario;
  final String atividade;
  final String tipo;

  Atividade copyWith({
    int id,
    int idUsuario,
    String atividade,
    String tipo,
  }) =>
      Atividade(
        id: id ?? this.id,
        idUsuario: idUsuario ?? this.idUsuario,
        atividade: atividade ?? this.atividade,
        tipo: tipo ?? this.tipo,
      );

  factory Atividade.fromJson(String str) => Atividade.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Atividade.fromMap(Map<String, dynamic> json) => Atividade(
    id: json["id"],
    idUsuario: json["idUsuario"],
    atividade: json["atividade"],
    tipo: json["tipo"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "idUsuario": idUsuario,
    "atividade": atividade,
    "tipo": tipo,
  };
}

class Interess {
  Interess({
    this.id,
    this.idUsuario,
    this.tipo,
    this.estado,
    this.cidade,
    this.graduacao,
    this.especialidade,
  });

  final int id;
  final int idUsuario;
  final String tipo;
  final String estado;
  final String cidade;
  final String graduacao;
  final String especialidade;

  Interess copyWith({
    int id,
    int idUsuario,
    String tipo,
    String estado,
    String cidade,
    String graduacao,
    String especialidade,
  }) =>
      Interess(
        id: id ?? this.id,
        idUsuario: idUsuario ?? this.idUsuario,
        tipo: tipo ?? this.tipo,
        estado: estado ?? this.estado,
        cidade: cidade ?? this.cidade,
        graduacao: graduacao ?? this.graduacao,
        especialidade: especialidade ?? this.especialidade,
      );

  factory Interess.fromJson(String str) => Interess.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Interess.fromMap(Map<String, dynamic> json) => Interess(
    id: json["id"],
    idUsuario: json["idUsuario"],
    tipo: json["tipo"],
    estado: json["estado"],
    cidade: json["cidade"],
    graduacao: json["graduacao"],
    especialidade: json["especialidade"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "idUsuario": idUsuario,
    "tipo": tipo,
    "estado": estado,
    "cidade": cidade,
    "graduacao": graduacao,
    "especialidade": especialidade,
  };
}
