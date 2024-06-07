import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tela_perfil extends StatelessWidget {
  const tela_perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tela_ferfil_STF(),
    );
  }
}

class tela_ferfil_STF extends StatefulWidget {
  const tela_ferfil_STF({super.key});

  @override
  State<tela_ferfil_STF> createState() => _tela_ferfil_STFState();
}

class _tela_ferfil_STFState extends State<tela_ferfil_STF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Color(0xff3DFFDC),
      body: SafeArea (child: Column( mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 50.00,
          backgroundColor: Colors.black26,
        )
      ],
      ),),

    );
  }
}