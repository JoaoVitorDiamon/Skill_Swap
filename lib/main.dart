import 'package:flutter/material.dart';
import 'package:skill_swap/pages/tela_login.dart';
import 'components/cores.dart';


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
        colorScheme: ColorScheme.fromSeed(
          seedColor: corFoco,
          brightness: Brightness.dark,
        ),
      ),
      home: const InicialPage(),
    );
  }
}
