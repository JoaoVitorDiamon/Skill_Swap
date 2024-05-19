import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class TextoNeon extends StatelessWidget {
  final String texto;

  const TextoNeon({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return NeonText(
      text: texto,
      spreadColor: const Color(0xFF3DFFDC),
      blurRadius: 4,
      textSize: 30,
      textColor: Color(0xFF3DFFDC),
      fontFamily: 'Julius Sans One',
    );
  }
}
