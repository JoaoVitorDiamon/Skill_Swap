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
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
              child: Container(
                //?-Tamanho do Contanier
                width: 350,
                height: 530,
                //?-/////////////

                //* Aparencia do Containier (Cor,Bordas,ETC)
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: corPrimaria),
                ),
                //*

                child: const Column(
                  children: [
                    //!Widget de Imagem de Fundo
                    BackgroundImage(
                      image: "assets/images/background1.png",
                    ),
                    //!

                    //*Titulo Login
                    TextLogin(),
                    //*

                    //todo Aqui fica a Parte dos Formularios
                    CorpoDoLogin(),
                    //todo
                  ],
                ),
              ),
            ),
          ),

          //!Aqui fica o Botao de Registro:

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
          )),

          //!
        ],
      ),
    );
  }
}
