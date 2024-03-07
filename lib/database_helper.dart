import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static const String tableName = 'users';

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'app_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE $tableName(username TEXT PRIMARY KEY, email TEXT, password TEXT)",
        );
      },
      version: 1,
    );
  }

  static Future<void> insertUser(Map<String, dynamic> user) async {
    final Database db = await database;
    await db.insert(tableName, user, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getUsers() async {
    final Database db = await database;
    return db.query(tableName);
  }
}
