import 'package:flutter/material.dart';

import 'components/camposDeTextos.dart';
import 'components/botao_login.dart';

class CorpoDoLogin extends StatelessWidget {
  const CorpoDoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* Forms Aparente na Pagina Login
        const CampoDeTexto(
          isPassword: true,
          hint: "Email:",
        ),
        const CampoDeTexto(
          hint: "Senha:",
          isPassword: true,
        ),
        //*

        //! Botao Esqueci Minha Senha
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
        //!

        //todo\\Botao de Login
        const BotaoLogin(),
        //todo
      ],
    );
  }
}
