import 'package:flutter/material.dart';

import 'components/camposDeTextos.dart';
import 'components/botao_login.dart';

class CorpoDoLogin extends StatelessWidget {
  const CorpoDoLogin({super.key});

  @override

  //um widget "Column" é retornado, que
  //organiza seus filhos verticalmente tendo os Input do Email e da Senha, junto com o Botao de Logar.

  Widget build(BuildContext context) {
    return Column(
      children: [
        const CampoDeTexto(
          isPassword: true,
          hint: "Email:",
        ),
        const CampoDeTexto(
          hint: "Senha:",
          isPassword: true,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                      fontFamily: "Comfortaa",
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const BotaoLogin(),
      ],
    );
  }
}
