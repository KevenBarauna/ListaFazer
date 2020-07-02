import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lembrete/components/login/background.dart';
import 'package:lembrete/components/geral/button.dart';
import 'package:lembrete/components/login/inputTexto.dart';
import 'package:lembrete/components/login/checkBox.dart';
import 'package:lembrete/pages/dev/teste.dart';

var nomeUsuario = TextEditingController();
var senhaUsuario = TextEditingController();
bool lembrarUsuario = true;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            child: Image.asset('assets/image/profissoes-e-empregos.png'),
          ),
          InputTexto(obscure: false, controller: nomeUsuario, texto: 'Nome'),
          InputTexto(obscure: true, controller: senhaUsuario, texto: 'Senha'),
          CheckBox(
            value: lembrarUsuario,
            texto: 'Lembrar de mim',
          ),
          Button(
            texto: 'Entrar',
            funcao: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Teste()));
            },
          ),
        ],
      ),
    );
  }
}
