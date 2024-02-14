import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

import '../../widgets/home_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Cadastros',
        ),
        leading: Container(),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  HomeCard(
                    nome: 'Eduardo Mendonça',
                    cargo: 'Supervisor',
                    dtNasc: '05/06/1982',
                    telefone: '(67) 99241-3572',
                    valorContrato: 'R\$ 10.000,00',
                    onTap: () {},
                  ),
                  HomeCard(
                    nome: 'Érico Mendonça',
                    cargo: 'Supervisor',
                    dtNasc: '20/05/1954',
                    telefone: '(67) 99241-3572',
                    valorContrato: 'R\$ 10.000,00',
                    onTap: () {},
                  ),
                  HomeCard(
                    nome: 'Penha Mendonça',
                    cargo: 'Supervisor',
                    dtNasc: '23/07/1957',
                    telefone: '(67) 99241-3572',
                    valorContrato: 'R\$ 10.000,00',
                    onTap: () {},
                  ),
                  HomeCard(
                    nome: 'Lais Ferreira',
                    cargo: 'Supervisor',
                    dtNasc: '10/02/1987',
                    telefone: '(67) 99259-3588',
                    valorContrato: 'R\$ 10.000,00',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            right: 35,
            child: SpeedDial(
              speedDialChildren: [
                SpeedDialChild(
                  label: 'Cadastrar Supervisor',
                  child: const Icon(Icons.supervisor_account),
                  onPressed: () {
                    // Get.to(
                    //   () => const CadastrarSupervisor(),
                    // );
                  },
                ),
                SpeedDialChild(
                  label: 'Cadastrar Cabo Eleitoral',
                  child: const Icon(Icons.person_add_alt),
                  onPressed: () {
                    // Get.to(
                    //   () => const CadastrarCaboEleitoral(),
                    // );
                  },
                ),
              ],
              child: const Icon(
                Icons.more_vert,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
