import 'package:flutter/material.dart';
import 'package:skill_swap/componentes/color.dart';

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            corPrimaria,
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Conectar-Se",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Comfortaa',
              fontSize: 18,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
