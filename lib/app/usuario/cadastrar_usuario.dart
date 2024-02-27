import 'package:flutter/material.dart';

class CadastrarUsuario extends StatefulWidget {
  const CadastrarUsuario({
    super.key,
  });

  @override
  State<CadastrarUsuario> createState() => _CadastrarUsuarioState();
}

class _CadastrarUsuarioState extends State<CadastrarUsuario> {
  bool? checkboxValue = false;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final cpfController = TextEditingController();
  final telefoneController = TextEditingController();
  final dnController = TextEditingController();
  final valorContratoController = TextEditingController();
  final qtdParcelasController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Cadastrar Usuário'),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: nameController,
                        decoration: const InputDecoration(
                          label: Text('Nome'),
                          hintText: "Digite o Nome Completo",
                        ),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          label: Text('E-mail'),
                          hintText: "Digite o Email do Usuário",
                        ),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: cpfController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text('CPF'),
                          hintText: "Digite o CPF",
                        ),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: telefoneController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text('Telefone'),
                          hintText: "Digite o Telefone",
                        ),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: dnController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text('Data de Nascimento'),
                          hintText: "Digite a Data de Nascimento",
                        ),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: valorContratoController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text('Valor do Contrato'),
                          hintText: "Digite o Valor Total do Contrato",
                        ),
                      ),
                      TextFormField(
                        textInputAction: checkboxValue == true
                            ? TextInputAction.next
                            : TextInputAction.done,
                        controller: qtdParcelasController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text('Qtd de Parcelas'),
                          hintText: "Digite a Qtd de Parcelas",
                        ),
                      ),
                      Visibility(
                        visible: checkboxValue == true,
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('Digite a senha de Supervisor'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CheckboxListTile(
                        value: checkboxValue,
                        onChanged: (e) {
                          checkboxValue = e;
                          setState(() {});
                        },
                        title: const Text('Supervisor'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(160, 40),
                    ),
                    child: const Text('Cadastrar Usuário',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
