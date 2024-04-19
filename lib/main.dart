import 'package:flutter/material.dart';
import 'components/color.dart';
import 'pages/pagina_login.dart';

void main() {
  runApp(const InicalPage());
}

class InicalPage extends StatelessWidget {
  const InicalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: corPrimaria,
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
