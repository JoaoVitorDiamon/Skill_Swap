import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skill_swap/components/color.dart';
import 'package:skill_swap/components/texto_neon.dart';
import '../components/botao_registro.dart';
import '../components/butao_login.dart';
import '../components/camposDeTextos.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,70),
              child: Container(
                width: 350,
                height: 530,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: corPrimaria),
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 70, 0, 30),
                        child: TextoNeon(
                          texto: "Login",
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: CampoDeTexto(
                            isPassword: true,
                            hint: "Email:",
                          ),
                        ),
                        const CampoDeTexto(
                          hint: "Senha:",
                          isPassword: true,
                        ),
              
                        // Cor e largura da borda
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: BotaoRegistro(),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
