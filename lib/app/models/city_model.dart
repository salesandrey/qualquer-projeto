// To parse this JSON data, do
//
//     final cityModel = cityModelFromMap(jsonString);

import 'dart:convert';

class CityModel {
  CityModel({
    this.id,
    this.nome,
  });

  final int id;
  final String nome;

  CityModel copyWith({
    int id,
    String nome,
  }) =>
      CityModel(
        id: id ?? this.id,
        nome: nome ?? this.nome,
      );

  factory CityModel.fromJson(String str) => CityModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CityModel.fromMap(Map<String, dynamic> json) => CityModel(
    id: json["id"],
    nome: json["nome"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nome": nome,
  };
}


class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
