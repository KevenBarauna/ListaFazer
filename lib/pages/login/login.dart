import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lembrete/db/DatabaseUsuario.dart';
import 'package:lembrete/helpers/console.dart';
import 'package:lembrete/models/usuarioModel.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  myFunction() {
    UsuarioModel user = UsuarioModel(
        id: 1, nome: 'admin', email: 'admin@email.com', senha: '123');
    DatabaseHelper db = DatabaseHelper();

    db.insertUsuario(user);

    db.getAllUsuario().then((lista) {
      print(lista);
    });
  }

  consoleUsuairo() {
    DatabaseHelper db = DatabaseHelper();
    db.getAllUsuario().then((lista) {
      exibirListaUsuario(lista, 'Usuários');
    });
  }

  @override
  Widget build(BuildContext context) {
    consoleUsuairo();
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('</>'),
        ),
      ),
    );
  }
}
