class Empilhadeira {
  final String id;
  final String prefixo;
  final String? modelo;
  final String status;
  final int? frota;
  final int? km;

  Empilhadeira({
    required this.id,
    required this.prefixo,
    this.modelo,
    required this.status,
    this.frota,
    this.km,
  });

  factory Empilhadeira.fromJson(Map<String, dynamic> json) {
    return Empilhadeira(
      id: json['id'],
      prefixo: json['prefixo'],
      modelo: json['modelo'],
      status: json['status'],
      frota: json['frota'],
      km: json['km'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'prefixo': prefixo,
      'modelo': modelo,
      'status': status,
      'frota': frota,
      'km': km,
    };
  }
}
