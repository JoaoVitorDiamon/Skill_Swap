import 'package:flutter/material.dart';
import 'package:skill_swap/pages/tela_login.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF18FFC6),
          // ···
          brightness: Brightness.dark,
        ),
      ),
      home: const LoginForms(),
    );
  }
}
