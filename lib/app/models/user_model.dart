import 'dart:convert';

class UserModel {
  UserModel({
    this.id,
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
  final String senha;
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

  UserModel copyWith({
    int id,
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
    String tipo,
    String cidade,
    String estado,
    String instagram,
    List<Interess> interesses,
    List<Atividade> atividades,
  }) =>
      UserModel(
        id: id ?? this.id,
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
        tipo: tipo ?? this.tipo,
        cidade: cidade ?? this.cidade,
        estado: estado ?? this.estado,
        instagram: instagram ?? this.instagram,
        interesses: interesses ?? this.interesses,
        atividades: atividades ?? this.atividades,
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    id: json["id"],
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
    "senha": senha,
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
    this.tipo,
    this.atividade,
  });

  final int id;
  final String tipo;
  final String atividade;

  Atividade copyWith({
    int id,
    String tipo,
    String atividade,
  }) =>
      Atividade(
        id: id ?? this.id,
        tipo: tipo ?? this.tipo,
        atividade: atividade ?? this.atividade,
      );

  factory Atividade.fromJson(String str) => Atividade.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Atividade.fromMap(Map<String, dynamic> json) => Atividade(
    id: json["id"],
    tipo: json["tipo"],
    atividade: json["atividade"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "tipo": tipo,
    "atividade": atividade,
  };
}

class Interess {
  Interess({
    this.id,
    this.especialidade,
    this.graduacao,
    this.tipo,
    this.cidade,
    this.estado,
  });

  final int id;
  final String especialidade;
  final String graduacao;
  final String tipo;
  final String cidade;
  final String estado;

  Interess copyWith({
    int id,
    String especialidade,
    String graduacao,
    String tipo,
    String cidade,
    String estado,
  }) =>
      Interess(
        id: id ?? this.id,
        especialidade: especialidade ?? this.especialidade,
        graduacao: graduacao ?? this.graduacao,
        tipo: tipo ?? this.tipo,
        cidade: cidade ?? this.cidade,
        estado: estado ?? this.estado,
      );

  factory Interess.fromJson(String str) => Interess.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Interess.fromMap(Map<String, dynamic> json) => Interess(
    id: json["id"],
    especialidade: json["especialidade"],
    graduacao: json["graduacao"],
    tipo: json["tipo"],
    cidade: json["cidade"],
    estado: json["estado"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "especialidade": especialidade,
    "graduacao": graduacao,
    "tipo": tipo,
    "cidade": cidade,
    "estado": estado,
  };
}
