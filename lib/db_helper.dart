import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'cart_model.dart';

class DBHelper {
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
  }

  initDatabase() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path , "cart.database");
    var database = await openDatabase(path, version: 1, onCreate: _onCreate);
    return database;

  }

  _onCreate(Database db, int version) async {
    await db.execute(
      "CREATE TABLE cart ("
      "id INTEGER PRIMARY KEY AUTOINCREMENT, "
      "productName TEXT, "
      "productUnit TEXT, "
      "productPrice REAL, "
      "productImage TEXT, "
      "quantity INTEGER, "
      "productId TEXT, "
      "unitTage TEXT)"
    );

  }


  Future<Cart> insert(Cart cart) async {
    var dbClient = await database;
    cart.id = await dbClient!.insert("cart", cart.toMap());
    return cart;
  }

}
