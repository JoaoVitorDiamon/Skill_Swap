import 'package:flutter/material.dart';
import 'package:skill_swap/componentes/color.dart';

import 'components/texto_neon.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 70, 0, 30),
        child: TextoNeon(
          cor: corPrimaria,
          texto: "Login",
        ),
      ),
    );
  }
}
