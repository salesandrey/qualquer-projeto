
import 'dart:convert';

class NotificationModel {
  NotificationModel({
    this.id,
    this.idRemetente,
    this.idDestinatario,
    this.token,
    this.titulo,
    this.texto,
    this.nomeAbrev,
    this.data,
    this.status,
  });

  final int id;
  final int idRemetente;
  final int idDestinatario;
  final String token;
  final String titulo;
  final String texto;
  final String nomeAbrev;
  final DateTime data;
  final String status;

  NotificationModel copyWith({
    int id,
    int idRemetente,
    int idDestinatario,
    String token,
    String titulo,
    String texto,
    String nomeAbrev,
    DateTime data,
    String status,
  }) =>
      NotificationModel(
        id: id ?? this.id,
        idRemetente: idRemetente ?? this.idRemetente,
        idDestinatario: idDestinatario ?? this.idDestinatario,
        token: token ?? this.token,
        titulo: titulo ?? this.titulo,
        texto: texto ?? this.texto,
        nomeAbrev: nomeAbrev ?? this.nomeAbrev,
        data: data ?? this.data,
        status: status ?? this.status,
      );

  factory NotificationModel.fromJson(String str) => NotificationModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromMap(Map<String, dynamic> json) => NotificationModel(
    id: json["id"],
    idRemetente: json["idRemetente"],
    idDestinatario: json["idDestinatario"],
    token: json["token"],
    titulo: json["titulo"],
    texto: json["texto"],
    nomeAbrev: json["nomeAbrev"],
    data: DateTime.parse(json["data"]),
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "idRemetente": idRemetente,
    "idDestinatario": idDestinatario,
    "token": token,
    "titulo": titulo,
    "texto": texto,
    "nomeAbrev": nomeAbrev,
    "data": data.toIso8601String(),
    "status": status,
  };
}
