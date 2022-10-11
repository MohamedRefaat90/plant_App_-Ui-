import 'package:sqflite/sqflite.dart';

import '../model/plant.dart';

class DBHelper {
  static Database? db;
  static String tableName = 'Plants';
  static int version = 1;

  Future<void> initDB() async {
    try {
      // Initilaize DB path and Name
      String path = await getDatabasesPath() + 'Plants.db';
      print('DB Path');
      db = await openDatabase(
        path,
        version: version,
        onCreate: (Database db, int version) async {
          // Create DB & Tabels by SQL
          await db.execute(
            'CREATE TABLE $tableName ('
            'id INTEGER PRIMARY KEY,'
            'title TEXT NOT NULL,'
            'country TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'description TEXT,'
            'price INTEGER)',
          );
          print('Creating DB Successfully');
        },
      );
    } catch (erorr) {
      print(erorr);
    }
  }

  static Future<int> insert(Plant plant) async {
    print('Insert Called');
    return await db!.insert(tableName, plant.toJson());
  }

  static Future<List<Map<String, dynamic>>> query() async {
    print('Query Called');
    return await db!.query(tableName);
  }

  // static Future<int> delete(Plant plant) async {
  //   print('Delete Called');
  //   return await db!.delete(tableName, where: 'id = ?', whereArgs: []);
  // }
  static Future deleteDB() async {
    String path = await getDatabasesPath() + 'Plants.db';
    await deleteDatabase(path);
    print('DB Deleted');
  }
}
