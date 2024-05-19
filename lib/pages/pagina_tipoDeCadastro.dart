import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componentes/Login/background.dart';
import '../componentes/Login/components/texto_neon.dart';
import '../componentes/color.dart';

class TipoDeCadastro extends StatelessWidget {
  const TipoDeCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: [
          const BackgroundImage(image: "assets/images/background.png"),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextoNeon(
                    cor: corPrimaria,
                    texto: "TIPO DE CADASTRO",
                  ),
                ),
                Container(
                  width: 350,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: corPrimaria),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(250, 50),
                            backgroundColor: const Color(0xff292929),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Empresa',
                            style: TextStyle(
                              fontFamily: "Comfortaa",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(250, 50),
                              backgroundColor: const Color(0xff292929),
                            ),
                            child: const Text(
                              'Usuário',
                              style: TextStyle(
                                fontFamily: "Comfortaa",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )

                        //
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
