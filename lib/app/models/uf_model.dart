// To parse this JSON data, do
//
//     final ufModel = ufModelFromMap(jsonString);

import 'dart:convert';

class UfModel {
  UfModel({
    this.id,
    this.sigla,
    this.nome,
    this.regiao,
  });

  final int id;
  final String sigla;
  final String nome;
  final UfModel regiao;

  UfModel copyWith({
    int id,
    String sigla,
    String nome,
    UfModel regiao,
  }) =>
      UfModel(
        id: id ?? this.id,
        sigla: sigla ?? this.sigla,
        nome: nome ?? this.nome,
        regiao: regiao ?? this.regiao,
      );

  factory UfModel.fromJson(String str) => UfModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UfModel.fromMap(Map<String, dynamic> json) => UfModel(
    id: json["id"],
    sigla: json["sigla"],
    nome: json["nome"],
    regiao: json["regiao"] == null ? null : UfModel.fromMap(json["regiao"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "sigla": sigla,
    "nome": nome,
    "regiao": regiao == null ? null : regiao.toMap(),
  };
}
