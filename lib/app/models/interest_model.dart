


class Interess {
  Interess({
    this.id,
    this.tipo,
    this.estado,
    this.cidade,
    this.graduacao,
    this.especialidade,
  });

  final String id;
  final String tipo;
  final String estado;
  final String cidade;
  final String graduacao;
  final String especialidade;

  Interess copyWith({
    String id,
    String tipo,
    String estado,
    String cidade,
    String graduacao,
    String especialidade,
  }) =>
      Interess(
        id: id ?? this.id,
        tipo: tipo ?? this.tipo,
        estado: estado ?? this.estado,
        cidade: cidade ?? this.cidade,
        graduacao: graduacao ?? this.graduacao,
        especialidade: especialidade ?? this.especialidade,
      );

  factory Interess.fromMap(Map<String, dynamic> json) => Interess(
    id: json["id"],
    tipo: json["Tipo"],
    estado: json["Estado"],
    cidade: json["Cidade"],
    graduacao: json["Graduacao"],
    especialidade: json["Especialidade"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "Tipo": tipo,
    "Estado": estado,
    "Cidade": cidade,
    "Graduacao": graduacao,
    "Especialidade": especialidade,
  };
}
