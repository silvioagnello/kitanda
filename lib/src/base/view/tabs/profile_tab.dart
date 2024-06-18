import 'package:flutter/material.dart';
import 'package:kitanda/src/base/repositories/app_data.dart' as app_data;
import 'package:kitanda/src/commons/widgets/custom_textfield.dart';

import '../../../commons/themes/theme.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MaterialTheme.lightScheme().surfaceDim,
      // APPBAR(titulo=PERFIL DO USUÁRIO
      appBar: AppBar(
        //backgroundColor: MaterialTheme.lightScheme().surfaceDim,
        elevation: 0,
        title: const Text(
          'Perfil do usuário',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            onlyRead: true,
            labelText: 'E-mail',
            prefixIcon: Icons.email,
            initValue: app_data.user.email,
          ),
          CustomTextField(
            onlyRead: true,
            labelText: 'Nome',
            prefixIcon: Icons.person,
            initValue: app_data.user.name,
          ),
          CustomTextField(
            onlyRead: true,
            labelText: 'Celular',
            prefixIcon: Icons.phone,
            initValue: app_data.user.phone,
          ),
          CustomTextField(
            onlyRead: true,
            isSecret: true,
            labelText: 'CPF',
            prefixIcon: Icons.file_copy,
            initValue: app_data.user.cpf,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Atualizar senha'),
            ),
          )
        ],
      ),
    );
  }
}
