import 'package:flutter/material.dart';
import 'package:skill_swap/componentes/Login/textLogin.dart';

import '../componentes/Login/components/botao_registro.dart';
import '../componentes/Login/components/camposDeTextos.dart';
import '../componentes/Login/components/texto_neon.dart';
import '../componentes/color.dart';

class RegistroEmpresa extends StatefulWidget {
  const RegistroEmpresa({super.key});

  @override
  State<RegistroEmpresa> createState() => _RegistroEmpresaState();
}

class _RegistroEmpresaState extends State<RegistroEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const TextoNeon(
              texto: "Crie seu Perfil.",
              cor: corPrimaria,
            ),
            Container(
              width: 370,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: corPrimaria),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CampoDeTexto(
                      hint: "Nome",
                      isPassword: false,
                    ),
                    CampoDeTexto(
                      hint: "Data de Fundação",
                      isPassword: false,
                    ),
                    CampoDeTexto(
                      hint: "Cnpj",
                      isPassword: false,
                    ),
                    CampoDeTexto(
                      hint: "Email",
                      isPassword: false,
                    ),
                    CampoDeTexto(
                      hint: "Senha",
                      isPassword: false,
                    ),
                    CampoDeTexto(
                      hint: "Confirmação de Senha",
                      isPassword: false,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
              child: TermsAndConditions(),
            ),
            const Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: BotaoRegistro(texto: "Voltar"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                      child: BotaoRegistro(texto: "Entrar"),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        Expanded(
          child: RichText(
            text: const TextSpan(
              text: 'Li e concordo com os ',
              style: TextStyle(color: Colors.white, fontFamily: "Comfortaa"),
              children: [
                TextSpan(
                  text: 'Termos de Uso',
                  style: TextStyle(color: corPrimaria),
                ),
                TextSpan(
                  text: ' e ',
                  style: TextStyle(color: corPrimaria),
                ),
                TextSpan(
                  text: 'Políticas de Privacidade',
                  style: TextStyle(color: corPrimaria),
                  // Ação para abrir a página de Políticas de Privacidade
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
