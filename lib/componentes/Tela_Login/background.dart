import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    /// This code snippet is defining a Flutter widget called `BackgroundImage` that
    /// displays an image as the background.
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background1.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
