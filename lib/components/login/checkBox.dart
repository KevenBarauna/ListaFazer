import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool valueCheck;

class CheckBox extends StatefulWidget {
  final bool value;
  final Function funcao;
  final String texto;
  final Color cor, corTexto;
  const CheckBox({
    Key key,
    this.value,
    this.funcao,
    this.texto,
    this.cor = Colors.green,
    this.corTexto = Colors.white,
  }) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    Size tela = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: tela.width * 0.8,
      child: ClipRRect(
        child: Row(
          children: <Widget>[
            Checkbox(
              value: valueCheck,
              onChanged: (bool resp) {
                setState(() {
                  valueCheck = resp;
                });
              },
            ),
            Text(widget.texto),
          ],
        ),
      ),
    );
  }
}
