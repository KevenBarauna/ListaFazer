import 'dart:async';
import 'dart:io';

import 'package:lembrete/models/usuarioModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  String usuarioTabela = 'usuario';
  String colId = 'id';
  String colNome = 'nome';
  String colEmail = 'email';
  String colSenha = 'senha';

  DatabaseHelper._createInstace();

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstace();
    }
    return _databaseHelper;
  }

  //SINGLETON
  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  //CRIAR BANDO DE DADOS
  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'appkeven.db';

    var usuarioDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return usuarioDatabase;
  }

  //CRIAR TABELA USUARIO
  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $usuarioTabela($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colNome TEXT, $colEmail TEXT, $colSenha TEXT)');
  }

  //FECHAR CONEXAO
  Future close() async {
    Database db = await this.database;
    db.close();
  }

  //-----CRUD-----\\

  //INSERT
  Future<int> insertUsuario(UsuarioModel usuario) async {
    Database db = await this.database;

    var resultado = await db.insert(usuarioTabela, usuario.toMap());
    return resultado;
  }

  //GET PELO ID
  Future<UsuarioModel> getUsuario(int id) async {
    Database db = await this.database;

    List<Map> maps = await db.query(usuarioTabela,
        columns: [colId, colNome, colEmail, colSenha],
        where: "$colId = ?",
        whereArgs: [id]);

    if (maps.length > 0) {
      return UsuarioModel.fromMap(maps.first);
    } else {
      return null;
    }
  }

  //GET PELO ID
  Future<List<UsuarioModel>> getAllUsuario() async {
    print('getAllUsuario');
    Database db = await this.database;

    var resultado = await db.query(usuarioTabela);

    List<UsuarioModel> lista = resultado.isNotEmpty
        ? resultado.map((e) => UsuarioModel.fromMap(e)).toList()
        : [];
    return lista;
  }

  //UPDATE USUARIO
  Future<int> updateUsuario(UsuarioModel usuario) async {
    Database db = await this.database;

    var resultado = await db.update(usuarioTabela, usuario.toMap(),
        where: '$colId = ?', whereArgs: [usuario.id]);
    return resultado;
  }

  //APAGAR USUARIO
  Future<int> deleteUsuario(int id) async {
    Database db = await this.database;

    var resultado =
        await db.delete(usuarioTabela, where: '$colId = ?', whereArgs: [id]);

    return resultado;
  }

  //TOTAL USUARIO
  Future<int> getCount() async {
    Database db = await this.database;

    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) FROM $usuarioTabela');

    int resultado = Sqflite.firstIntValue(x);
    return resultado;
  }
}
