import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class TextoNeon extends StatelessWidget {
  final String texto;
  final Color cor;

  const TextoNeon({super.key, required this.texto, required this.cor});

  @override
  Widget build(BuildContext context) {
    return NeonText(
      text: texto,
      spreadColor: cor,
      blurRadius: 4,
      textSize: 30,
      textColor: cor,
      fontFamily: 'Julius Sans One',
    );
  }
}
