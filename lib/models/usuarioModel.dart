class UsuarioModel {
  int id;
  String nome;
  String email;
  String senha;

  UsuarioModel({this.id, this.nome, this.email, this.senha});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha
    };
    return map;
  }

  UsuarioModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nome = map['nome'];
    email = map['email'];
    senha = map['senha'];
  }
}
