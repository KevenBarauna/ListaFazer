import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lembrete/components/geral/button.dart';
import 'package:lembrete/db/DatabaseUsuario.dart';
import 'package:lembrete/helpers/console.dart';
import 'package:lembrete/models/usuarioModel.dart';

class Teste extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  myFunction() {
    DatabaseHelper db = DatabaseHelper();
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
    // consoleUsuairo();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 240, bottom: 50),
            child: Text('</>'),
          )),
          Button(
            texto: 'Contar usuário',
            funcao: () {
              myFunction();
            },
          ),
        ],
      ),
    );
  }
}
