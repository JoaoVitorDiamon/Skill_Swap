import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String image;
  const BackgroundImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    /// This code snippet is defining a Flutter widget called `BackgroundImage` that
    /// displays an image as the background.

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
