import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputTexto extends StatelessWidget {
  final bool obscure;
  final TextEditingController controller;
  final String texto;
  const InputTexto({
    Key key,
    this.obscure,
    this.controller,
    this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tela = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: tela.width * 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: TextFormField(
            obscureText: obscure,
            keyboardType: TextInputType.text,
            decoration: decoracaoInput(texto),
            style: decoracaoInputText(),
            controller: controller,
          )),
    );
  }
}

decoracaoInput(String texto) {
  return InputDecoration(
    labelText: texto,
    labelStyle: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  );
}

decoracaoInputText() {
  return TextStyle(
    fontSize: 15,
    color: Colors.green,
  );
}
