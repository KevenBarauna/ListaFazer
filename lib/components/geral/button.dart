import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String texto;
  final Function funcao;
  final Color cor, corTexto;
  const Button({
    Key key,
    this.texto = '-',
    this.funcao,
    this.cor = Colors.green,
    this.corTexto = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tela = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: tela.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          color: cor,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: funcao,
          child: Text(
            texto,
            style: TextStyle(color: corTexto),
          ),
        ),
      ),
    );
  }
}
