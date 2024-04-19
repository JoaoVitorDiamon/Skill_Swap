import 'package:flutter/material.dart';

import 'color.dart';

class CampoDeTexto extends StatelessWidget {
  final bool isPassword;
  final String hint;
  const CampoDeTexto({super.key, required this.isPassword, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
            filled: true,
            fillColor: corFundoTexto,
            focusColor: corPrimaria,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            labelText: hint,
            labelStyle: TextStyle(fontFamily: 'Comfortaa'),
            isDense: true,
            ),
      ),
    );
  }
}
