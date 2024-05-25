import 'package:flutter/material.dart';

import '../../color.dart';

class CampoDeTexto extends StatelessWidget {
  //*Variaveis
  final bool isPassword;
  final String hint;
  const CampoDeTexto({super.key, required this.isPassword, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        //* Verifica se e Senha
        obscureText: isPassword,

        //! Decoracao dos Forms
        decoration: InputDecoration(
          filled: true,
          fillColor: corFundoTexto,
          focusColor: corPrimaria,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),

          //* Texto Aparente nos Forms
          labelText: hint,
          labelStyle: const TextStyle(fontFamily: 'Comfortaa'),

          //todo Deixa o Forms mais compacto
          isDense: true,
        ),
      ),
    );
  }
}
