import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  final String nome;
  final String cargo;
  final String dtNasc;
  final String telefone;
  final String valorContrato;
  final VoidCallback onTap;
  const HomeCard({
    super.key,
    required this.nome,
    required this.cargo,
    required this.dtNasc,
    required this.telefone,
    required this.valorContrato,
    required this.onTap,
  });

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: () => widget.onTap,
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Nome: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(widget.nome),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Cargo:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(widget.cargo),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'DN:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(widget.dtNasc),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Telefone:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(widget.telefone),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Valor do Contrato:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(widget.valorContrato),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
