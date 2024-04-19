import 'package:flutter/material.dart';
import 'package:skill_swap/components/color.dart';

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
        child: Text(
          "Conectar-Se",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}