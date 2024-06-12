import 'package:flutter/material.dart';
 
void main() {
runApp(MeuApp());
}
 
class MeuApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: TelaPerfil(),
);
}
}
 
class TelaPerfil extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.teal,
body: SafeArea(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
CircleAvatar(
radius: 50.0,
backgroundColor: Colors.black,
),
Text(
'Meu perfil',
style: TextStyle(
fontSize: 24.0,
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
SizedBox(
height: 20.0,
width: 150.0,
child: Divider(
color: Colors.teal.shade100,
),
),
InfoCard(label: 'Nome', valor: 'Preenchido'),
InfoCard(label: 'Data de nascimento', valor: 'Preenchido'),
InfoCard(label: 'Gênero', valor: 'Preenchido'),
],
),
),
);
}
}
 
class InfoCard extends StatelessWidget {
final String label;
final String valor;
 
InfoCard({required this.label, required this.valor});
 
@override
Widget build(BuildContext context) {
return Card(
margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
child: ListTile(
title: Text(
label,
style: TextStyle(
color: Colors.teal.shade900,
fontSize: 20.0,
),
),
subtitle: Text(
valor,
style: TextStyle(
fontSize: 18.0,
color: Colors.teal.shade900,
),
),
),
);
}
}