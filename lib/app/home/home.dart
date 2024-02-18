import 'package:flutter/material.dart';
import '../../utils/load_mock.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

import '../../widgets/home_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List listData = [];

  Future<void> getData() async {
    final data = await LoadMock.load('model_data.json');
    listData = data['data'];
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  // CaboModel get cabo {

  //   return CaboModel.fromJson(listData);
  // }

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
          ListView.builder(
            itemCount: listData.length,
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              return HomeCard(
                nome: listData[index]['nome'],
                cargo: listData[index]['cargo'],
                dtNasc: listData[index]['dtNasc'],
                telefone: listData[index]['telefone'],
                valorContrato: listData[index]['valorContrato'],
                onTap: () {},
              );
            },
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
