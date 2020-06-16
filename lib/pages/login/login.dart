import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lembrete/components/login/background.dart';
import 'package:lembrete/components/login/button.dart';
import 'package:lembrete/helpers/system.dart';

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
          Text('Minha página de login'),
          Button(
            texto: 'Entrar',
            funcao: () {},
          ),
        ],
      ),
    );
  }
}
