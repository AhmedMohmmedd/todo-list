import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlDb {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  initialDb() async {
    String dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, 'ahmed.db');
    Database mydb = await openDatabase(path,
        onCreate: _onCreate, version: 15, onUpgrade: _onUpgrade);
    return mydb;
  }

  _onUpgrade(Database db, int oldversion, int newversion) async {
        print('UPGRADE===================');
        // await db.execute("ALTER TABLE tasks ADD COLUMN data TEXT");

  }

  _onCreate(Database db, int version) async {
    await db.execute('''
 CREATE TABLE "tasks"(
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "task" TEXT NOT NULL
    
   )
''');
    print('CREATE DATABASE AND TABKE===================');
  }

  selectData(String sql) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }
  insertData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }
  updateData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }
  deletData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }

  //bulid functions

   select(String table) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.query(table);
    return response;
  }

  insert(String table , Map<String, Object?>values) async {
    Database? mydb = await db;
    int response = await mydb!.insert(table , values);
    return response;
  }

   update(String table , Map<String, Object?>values ,String? mywhere) async {
    Database? mydb = await db;
    int response = await mydb!.update(table , values , where: mywhere);
    return response;
  }

  delet(String table ,String? mywhere) async {
    Database? mydb = await db;
    int response = await mydb!.delete(table ,where: mywhere);
    return response;
  }
}
