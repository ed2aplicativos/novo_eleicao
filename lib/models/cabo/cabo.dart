class CaboModel {
  final String nome;
  final bool supervisor;
  final String dtNast;
  final String telefone;
  final String valorContrato;
  final String qtdParcelas;

  CaboModel({
    required this.nome,
    required this.supervisor,
    required this.dtNast,
    required this.telefone,
    required this.valorContrato,
    required this.qtdParcelas,
  });

  factory CaboModel.fromJson(Map json) {
    return CaboModel(
      nome: json['nome'],
      supervisor: json['cargo'] == 'Supervisor' ? true : false,
      dtNast: json['dtNasc'],
      telefone: json['telefone'],
      valorContrato: json['valorContrato'],
      qtdParcelas: json['qtdParcelas'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nome'] = nome;
    data['supervisor'] = supervisor;
    data['dtNasc'] = dtNast;
    data['telefone'] = telefone;
    data['valorContrato'] = valorContrato;
    data['qtdParcelas'] = qtdParcelas;
    return data;
  }
}
