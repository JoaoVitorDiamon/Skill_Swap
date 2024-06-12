import 'package:flutter/material.dart';
import 'package:skill_swap/componentes/Login/textLogin.dart';
import 'package:skill_swap/pages/pagina_login.dart';
import 'package:skill_swap/pages/pagina_notificacao.dart';
import 'package:skill_swap/pages/pagina_pesquisa.dart';
import 'package:skill_swap/pages/pagina_tipoDeCadastro.dart';
import 'componentes/color.dart';
import 'pages/pagina_registroEmpresa.dart';
import 'pages/pagina_perfil.dart';
// import 'pages/pagina_login.dart';

void main() {
  runApp(const InicalPage());
}

class InicalPage extends StatelessWidget {
  const InicalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          //* Tema do Aplicativo
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: corPrimaria,
            brightness: Brightness.dark,
          ),
        ),
        //*
        debugShowCheckedModeBanner: false,
        home: MeuApp());
  }
}
