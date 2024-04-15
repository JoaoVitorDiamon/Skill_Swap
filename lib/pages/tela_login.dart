import 'package:flutter/material.dart';
import 'package:skill_swap/components/login/botao_login.dart';
import 'package:skill_swap/components/login/botao_registro.dart';
import 'package:skill_swap/components/login/campos_de_textos.dart';

import '../components/cores.dart';
import '../components/login/text_neon.dart';

class LoginForms extends StatelessWidget {
  const LoginForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corBackground,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextoNeon(title: "LOGIN", cores: corPrimaria),
                  ),
                  Container(
                    width: 300,
                    height: 450,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                          color: corPrimaria), // Cor e largura da borda
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Essa Parte e do Titulo em Neon
                        //Essa Parte e do Email do Formulario
                        CampoDeTextos(
                          placeholder: "Email",
                          isPassword: false,
                        ),

                        //Essa Parte e do Senha do Formulario
                        CampoDeTextos(
                          isPassword: true,
                          placeholder: "Senha",
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
                          child: BotaoLogin(),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: BotaoRegistro(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
