// To parse this JSON data, do
//
//     final cityModel = cityModelFromMap(jsonString);

import 'dart:convert';

class CityModel {
  CityModel({
    this.id,
    this.nome,
    this.microrregiao,
    this.regiaoImediata,
  });

  final int id;
  final String nome;
  final Microrregiao microrregiao;
  final RegiaoImediata regiaoImediata;

  CityModel copyWith({
    int id,
    String nome,
    Microrregiao microrregiao,
    RegiaoImediata regiaoImediata,
  }) =>
      CityModel(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        microrregiao: microrregiao ?? this.microrregiao,
        regiaoImediata: regiaoImediata ?? this.regiaoImediata,
      );

  factory CityModel.fromJson(String str) => CityModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CityModel.fromMap(Map<String, dynamic> json) => CityModel(
    id: json["id"],
    nome: json["nome"],
    microrregiao: Microrregiao.fromMap(json["microrregiao"]),
    regiaoImediata: RegiaoImediata.fromMap(json["regiao-imediata"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nome": nome,
    "microrregiao": microrregiao.toMap(),
    "regiao-imediata": regiaoImediata.toMap(),
  };
}

class Microrregiao {
  Microrregiao({
    this.id,
    this.nome,
    this.mesorregiao,
  });

  final int id;
  final String nome;
  final Mesorregiao mesorregiao;

  Microrregiao copyWith({
    int id,
    String nome,
    Mesorregiao mesorregiao,
  }) =>
      Microrregiao(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        mesorregiao: mesorregiao ?? this.mesorregiao,
      );

  factory Microrregiao.fromJson(String str) => Microrregiao.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Microrregiao.fromMap(Map<String, dynamic> json) => Microrregiao(
    id: json["id"],
    nome: json["nome"],
    mesorregiao: Mesorregiao.fromMap(json["mesorregiao"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nome": nome,
    "mesorregiao": mesorregiao.toMap(),
  };
}

class Mesorregiao {
  Mesorregiao({
    this.id,
    this.nome,
    this.uf,
  });

  final int id;
  final MesorregiaoNome nome;
  final Uf uf;

  Mesorregiao copyWith({
    int id,
    MesorregiaoNome nome,
    Uf uf,
  }) =>
      Mesorregiao(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        uf: uf ?? this.uf,
      );

  factory Mesorregiao.fromJson(String str) => Mesorregiao.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Mesorregiao.fromMap(Map<String, dynamic> json) => Mesorregiao(
    id: json["id"],
    nome: mesorregiaoNomeValues.map[json["nome"]],
    uf: Uf.fromMap(json["UF"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nome": mesorregiaoNomeValues.reverse[nome],
    "UF": uf.toMap(),
  };
}

enum MesorregiaoNome { SUL_FLUMINENSE, NOROESTE_FLUMINENSE, BAIXADAS, CENTRO_FLUMINENSE, METROPOLITANA_DO_RIO_DE_JANEIRO, NORTE_FLUMINENSE, RIO_DE_JANEIRO, CAMPOS_DOS_GOYTACAZES, MACA_RIO_DAS_OSTRAS_CABO_FRIO, PETRPOLIS, VOLTA_REDONDA_BARRA_MANSA }

final mesorregiaoNomeValues = EnumValues({
  "Baixadas": MesorregiaoNome.BAIXADAS,
  "Campos dos Goytacazes": MesorregiaoNome.CAMPOS_DOS_GOYTACAZES,
  "Centro Fluminense": MesorregiaoNome.CENTRO_FLUMINENSE,
  "Macaé - Rio das Ostras - Cabo Frio": MesorregiaoNome.MACA_RIO_DAS_OSTRAS_CABO_FRIO,
  "Metropolitana do Rio de Janeiro": MesorregiaoNome.METROPOLITANA_DO_RIO_DE_JANEIRO,
  "Noroeste Fluminense": MesorregiaoNome.NOROESTE_FLUMINENSE,
  "Norte Fluminense": MesorregiaoNome.NORTE_FLUMINENSE,
  "Petrópolis": MesorregiaoNome.PETRPOLIS,
  "Rio de Janeiro": MesorregiaoNome.RIO_DE_JANEIRO,
  "Sul Fluminense": MesorregiaoNome.SUL_FLUMINENSE,
  "Volta Redonda - Barra Mansa": MesorregiaoNome.VOLTA_REDONDA_BARRA_MANSA
});

class Uf {
  Uf({
    this.id,
    this.sigla,
    this.nome,
    this.regiao,
  });

  final int id;
  final Sigla sigla;
  final UfNome nome;
  final Uf regiao;

  Uf copyWith({
    int id,
    Sigla sigla,
    UfNome nome,
    Uf regiao,
  }) =>
      Uf(
        id: id ?? this.id,
        sigla: sigla ?? this.sigla,
        nome: nome ?? this.nome,
        regiao: regiao ?? this.regiao,
      );

  factory Uf.fromJson(String str) => Uf.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Uf.fromMap(Map<String, dynamic> json) => Uf(
    id: json["id"],
    sigla: siglaValues.map[json["sigla"]],
    nome: ufNomeValues.map[json["nome"]],
    regiao: json["regiao"] == null ? null : Uf.fromMap(json["regiao"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "sigla": siglaValues.reverse[sigla],
    "nome": ufNomeValues.reverse[nome],
    "regiao": regiao == null ? null : regiao.toMap(),
  };
}

enum UfNome { RIO_DE_JANEIRO, SUDESTE }

final ufNomeValues = EnumValues({
  "Rio de Janeiro": UfNome.RIO_DE_JANEIRO,
  "Sudeste": UfNome.SUDESTE
});

enum Sigla { RJ, SE }

final siglaValues = EnumValues({
  "RJ": Sigla.RJ,
  "SE": Sigla.SE
});

class RegiaoImediata {
  RegiaoImediata({
    this.id,
    this.nome,
    this.regiaoIntermediaria,
  });

  final int id;
  final String nome;
  final Mesorregiao regiaoIntermediaria;

  RegiaoImediata copyWith({
    int id,
    String nome,
    Mesorregiao regiaoIntermediaria,
  }) =>
      RegiaoImediata(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        regiaoIntermediaria: regiaoIntermediaria ?? this.regiaoIntermediaria,
      );

  factory RegiaoImediata.fromJson(String str) => RegiaoImediata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RegiaoImediata.fromMap(Map<String, dynamic> json) => RegiaoImediata(
    id: json["id"],
    nome: json["nome"],
    regiaoIntermediaria: Mesorregiao.fromMap(json["regiao-intermediaria"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nome": nome,
    "regiao-intermediaria": regiaoIntermediaria.toMap(),
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
