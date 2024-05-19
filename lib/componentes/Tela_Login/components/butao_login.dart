import 'package:flutter/material.dart';

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Color(0xFF42CFB6),
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
