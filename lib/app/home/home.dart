import 'package:flutter/material.dart';

import '../../utils/load_mock.dart';
import '../../widgets/home_card.dart';
import '../usuario/cadastrar_usuario.dart';

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
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
      body: ListView.builder(
        itemCount: listData.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return HomeCard(
            nome: listData[index]['nome'],
            cargo: listData[index]['cargo'],
            dtNasc: listData[index]['dtNasc'],
            telefone: listData[index]['telefone'],
            valorContrato: listData[index]['valorContrato'],
            qtdParcelas: listData[index]['qtdParcelas'],
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person_add_alt),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CadastrarUsuario(),
            ),
          );
        },
      ),
    );
  }
}
