import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Expanded(
            child: Container(
              child: Image.asset("assets/images/background1.png"),
               ),
          ),
          
        ],
      ),
    );
  }
}