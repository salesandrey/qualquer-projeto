import 'dart:convert';

class ConfigurationModel {
  ConfigurationModel({
    this.id,
    this.idUsuario,
    this.notificacaoPush,
    this.notificacaoEmail,
    this.favoritadoAlguem,
    this.favoritoFavoritou,
    this.solicitadoPadrinho,
    this.escolhidoAfilhado,
    this.apadrinhamentoOficial,
  });

  final int id;
  final int idUsuario;
  final int notificacaoPush;
  final int notificacaoEmail;
  final int favoritadoAlguem;
  final int favoritoFavoritou;
  final int solicitadoPadrinho;
  final int escolhidoAfilhado;
  final int apadrinhamentoOficial;

  ConfigurationModel copyWith({
    int id,
    int idUsuario,
    int notificacaoPush,
    int notificacaoEmail,
    int favoritadoAlguem,
    int favoritoFavoritou,
    int solicitadoPadrinho,
    int escolhidoAfilhado,
    int apadrinhamentoOficial,
  }) =>
      ConfigurationModel(
        id: id ?? this.id,
        idUsuario: idUsuario ?? this.idUsuario,
        notificacaoPush: notificacaoPush ?? this.notificacaoPush,
        notificacaoEmail: notificacaoEmail ?? this.notificacaoEmail,
        favoritadoAlguem: favoritadoAlguem ?? this.favoritadoAlguem,
        favoritoFavoritou: favoritoFavoritou ?? this.favoritoFavoritou,
        solicitadoPadrinho: solicitadoPadrinho ?? this.solicitadoPadrinho,
        escolhidoAfilhado: escolhidoAfilhado ?? this.escolhidoAfilhado,
        apadrinhamentoOficial: apadrinhamentoOficial ?? this.apadrinhamentoOficial,
      );

  factory ConfigurationModel.fromJson(String str) => ConfigurationModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConfigurationModel.fromMap(Map<String, dynamic> json) => ConfigurationModel(
    id: json["id"],
    idUsuario: json["idUsuario"],
    notificacaoPush: json["notificacaoPush"],
    notificacaoEmail: json["notificacaoEmail"],
    favoritadoAlguem: json["favoritadoAlguem"],
    favoritoFavoritou: json["favoritoFavoritou"],
    solicitadoPadrinho: json["solicitadoPadrinho"],
    escolhidoAfilhado: json["escolhidoAfilhado"],
    apadrinhamentoOficial: json["apadrinhamentoOficial"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "idUsuario": idUsuario,
    "notificacaoPush": notificacaoPush,
    "notificacaoEmail": notificacaoEmail,
    "favoritadoAlguem": favoritadoAlguem,
    "favoritoFavoritou": favoritoFavoritou,
    "solicitadoPadrinho": solicitadoPadrinho,
    "escolhidoAfilhado": escolhidoAfilhado,
    "apadrinhamentoOficial": apadrinhamentoOficial,
  };
}
