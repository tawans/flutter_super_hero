import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlDatabase {
  static final SqlDatabase instance = SqlDatabase._instance();

  Database? _database;

  SqlDatabase._instance() {
    _initDataBase();
  }

  factory SqlDatabase() {
    return instance;
  }

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      await _initDataBase();
      return _database!;
    }
  }

  Future<void> _initDataBase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'super_hero.db');
    _database = await openDatabase(path, version: 1, onCreate: _databaseCreate);
  }

  void _databaseCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE super_hero(
        id TEXT PRIMARY KEY,
        name TEXT,
        imageUrl TEXT
      )
    ''');
  }

  void closeDatabase() async {
    if (_database != null) {
      await _database?.close();
    }
  }
}
