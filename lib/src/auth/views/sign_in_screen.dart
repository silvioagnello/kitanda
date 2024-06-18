import 'package:flutter/material.dart';
import 'package:kitanda/src/auth/views/sign_up_screen.dart';
import 'package:kitanda/src/commons/themes/theme.dart';
import 'package:kitanda/src/commons/widgets/custom_textfield.dart';

import '../../base/view/base_screen.dart';
import '../../commons/widgets/title_widget.dart';

class SignInScreen extends StatefulWidget {
  final String title;

  const SignInScreen({super.key, required this.title});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              const TitleWidget(),
              fieldGroups(),
            ],
          ),
        ),
      ),
    );
  }

  // FORMULÁRIO
  fieldGroups() {
    return Expanded(
      flex: 1,
      child: Container(
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
            // BOTÃO ENTRAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const BaseScreen(),
                      ),
                    );
                  },
                  label: const Text('Entrar')),
            ),
            // BOTÃO ESQUECI A SENHA
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Esqueci a senha',
                    style: TextStyle(color: appTheme().hintColor
                        //MaterialTheme.lightMediumContrastScheme().error),
                        ),
                  ),
                ),
              ),
            ),
            // DIVISORIA
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Text('  OU  '),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                )),
            // BOTÃO CRIAR CONTA
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 15, 18, 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ));
                  },
                  child: const Text('Criar conta')),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
