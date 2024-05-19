import 'package:flutter/material.dart';
import '../componentes/color.dart';
import '../componentes/Login/background.dart';
import '../componentes/Login/bodyText.dart';
import '../componentes/Login/components/botao_registro.dart';
import '../componentes/Login/textLogin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          /// Este trecho de código está definindo um widget Flutter chamado `BackgroundImage` que
          /// exibe uma imagem como plano de fundo.

          /// Esta parte do código está criando um contêiner centralizado com
          /// dimensões e estilo. Aqui está um resumo do que está fazendo e com as Bordas Ciano:
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
              child: Container(
                width: 350,
                height: 530,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: corPrimaria),
                ),

                // Esta parte do código está definindo um widget `Column` dentro do
                //contêiner. Dentro desta `Coluna`, existem os componentes principais sendo eles o Titulo Login:

                child: const Column(
                  children: [
                    BackgroundImage(
                      image: "assets/images/background1.png",
                    ),
                    //Texto de Login
                    TextLogin(),

                    //Aqui fica o Corpo do Login
                    CorpoDoLogin(),
                  ],
                ),
              ),
            ),
          ),

          //Aqui fica o Botao de Registro:
          const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(25),
                child: BotaoRegistro(
                  texto: "Não possui uma conta?\n Cadastre-se aqui",
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
