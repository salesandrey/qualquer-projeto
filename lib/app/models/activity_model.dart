

class Atividade {
  Atividade({
    this.id,
    this.atividade,
  });

  final String id;
  final String atividade;

  Atividade copyWith({
    String id,
    String atividade,
  }) =>
      Atividade(
        id: id ?? this.id,
        atividade: atividade ?? this.atividade,
      );

  factory Atividade.fromMap(Map<String, dynamic> json) => Atividade(
    id: json["id"],
    atividade: json["Atividade"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "Atividade": atividade,
  };
}