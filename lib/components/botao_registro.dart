import 'package:flutter/material.dart';

class BotaoRegistro extends StatelessWidget {
  const BotaoRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
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
            TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(5),
                    textStyle: const TextStyle(fontSize: 15)),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    "Não possui uma conta?\n Cadastre-se aqui",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
