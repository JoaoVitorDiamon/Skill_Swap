import 'package:flutter/material.dart';
import 'package:skill_swap/components/cores.dart';

class CampoDeTextos extends StatelessWidget {
  final String placeholder;
  final bool isPassword;
  const CampoDeTextos({
    super.key,
    required this.placeholder,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        obscureText: isPassword,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: corInputLabels,
          focusColor: corPrimaria,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          hintText: placeholder,
          isDense: true,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontFamily: 'Comfortaa',
          ),
        ),
      ),
    );
  }
}
