import 'package:flutter/material.dart';
import 'package:kitanda/src/commons/themes/theme.dart';
import 'package:kitanda/src/commons/widgets/title_widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../commons/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          surfaceTintColor: MaterialTheme.lightScheme().primaryContainer,
          backgroundColor: MaterialTheme.lightScheme().primaryContainer),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height - 118.2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TitleWidget(titleString: 'Cadastro'),
              fieldGroups(),
            ],
          ),
        ),
      ),
    );
  }

  // FORMULÁRIO
  fieldGroups() {
    final phoneFormatter = MaskTextInputFormatter(
        mask: '55+ (##) # #### ####', filter: {'#': RegExp(r'[0-9]')});
    final cpfFormatter = MaskTextInputFormatter(
        mask: '###.###.###-##', filter: {'#': RegExp(r'[0-9]')});

    final size2 = MediaQuery.of(context).size;
    return Container(
      height: size2.height - 310,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // EMAIL
          const CustomTextField(prefixIcon: Icons.email, labelText: 'E-mail'),
          // SENHA
          const CustomTextField(
              prefixIcon: Icons.lock, labelText: 'Senha', isSecret: true),
          const CustomTextField(prefixIcon: Icons.person, labelText: 'Nome'),
          CustomTextField(
            prefixIcon: Icons.phone,
            labelText: 'Celular',
            inputFormatter: [phoneFormatter],
          ),
          CustomTextField(
            prefixIcon: Icons.file_copy,
            labelText: 'CPF',
            inputFormatter: [cpfFormatter],
          ),

          // BOTÃO CADASTRAR
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Cadastrar usuário'),
            ),
          ),
          const SizedBox(height: 25)
        ],
      ),
    );
  }
}
