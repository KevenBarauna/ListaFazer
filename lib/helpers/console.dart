exibirErro(erro, String titulo) {
  print('[ $titulo ]');
  print('✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖');
  print('ERRO: ${erro.toString()}');
  print('✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖');
  print('\n');
}

exibirSucesso(String mensagem) {
  print('☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑');
  print('[ $mensagem ]');
  print('☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑');
  print('\n');
}

exibirListaUsuario(List<dynamic> lista, String titulo) {
  print('[ $titulo ]');
  lista.forEach((value) {
    print(
        'USUÁRIO ➠  ID: [${value.id}]  NOME: [${value.nome}] SENHA: [${value.senha}]  EMAIL: [${value.email}]');
  });
  print('\n');
}
