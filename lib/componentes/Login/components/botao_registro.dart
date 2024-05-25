import 'package:flutter/material.dart';
import 'package:skill_swap/pages/pagina_tipoDeCadastro.dart';

class BotaoRegistro extends StatefulWidget {
  final String texto;
  const BotaoRegistro({super.key, required this.texto});

  @override
  State<BotaoRegistro> createState() => _BotaoRegistroState();
}

class _BotaoRegistroState extends State<BotaoRegistro> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                //* Gradiente do Botao
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(134, 34, 78, 70),
                      Color.fromARGB(126, 57, 184, 152),
                    ],
                  ),
                ),
              ),
            ),
            //*

            //! Botao Registro
            TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(14),
                    textStyle: const TextStyle(fontSize: 15)),
                onPressed: () {
                  //todo Redirecionamento Para Tipo de Cadastro
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const TipoDeCadastro()));
                },
                //todo\\
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    widget.texto,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            //!
          ],
        ),
      ),
    );
  }
}
