import 'package:flutter/cupertino.dart';

//RETORNA DATA FORMATADA DD/MM/YYYY
getData() {
  DateTime data = new DateTime.now();
  String dataFormatada =
      "${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year.toString()}";
  return dataFormatada;
}

//RETORNA LARGURA DO CELULAR
getLargura(dynamic context) {
  return MediaQuery.of(context).size.width;
}

//RETORNA ALTURA DO CELULAR
getAltura(dynamic context) {
  return MediaQuery.of(context).size.height;
}
