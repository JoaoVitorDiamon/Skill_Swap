import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class TextoNeon extends StatelessWidget {
  final String title;
  final Color cores;
  const TextoNeon({super.key, required this.title, required this.cores});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: NeonText(
        text: title,
        spreadColor: cores,
        blurRadius: 40,
        textSize: 32,
        textColor: cores,
        fontFamily: 'Julius Sans One',
      ),
    );
  }
}
