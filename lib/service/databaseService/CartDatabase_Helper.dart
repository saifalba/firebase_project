import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase2/constant.dart';
import 'package:firebase2/model/cartproductModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CartDatabaseHelper {
  // CartDatabaseHelper._();
  static Database? _db;
  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('products');

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDb();
      return _db;
    } else {
      return _db;
    }
  }

  initDb() async {
    String path = join(await getDatabasesPath(), 'CartProduct.dp');
    Database mydb = await openDatabase(
      path,
      onCreate: _creatdp,
      version: 1,
    );
    return mydb;
  }

  _creatdp(Database db, int version) async {
    await db.execute('''
CREATE TABLE $tblcartproduct  (
  $columnName TEXT NOT NULL,
  $columnImage   TEXT NOT NULL,
   $columnPrice TEXT NOT NULL,
    $columnQuantity INTEGER NOT NULL ,
    $columnID TEXT NOT NULL
    )

''');
    print("Creat data base ====================== ");
  }

  insertDb(CartProductModel model) async {
    var dbclint = await db;

    await dbclint?.insert(tblcartproduct, model.tojason(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<CartProductModel>> getAllProduct() async {
    var dbclint = await db;
    // QuerySnapshot querySnapshot = await productsCollection.get();
    // return querySnapshot.docs.map((doc) {
    //   Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    //   return CartProductModel(
    //     image: data['image'],
    //     name: data['name'],
    //     price: data['price'].toDouble(), quantity: 1,
    //   );
    // }).toList();

    final List<Map<String, dynamic>> maps =
        await dbclint!.query(tblcartproduct);
    // QuerySnapshot maps =
    //     (await dbclint!.query(tblcartproduct)) as QuerySnapshot<Object?>;
    // List<CartProductModel> list = maps == null
    //     ? maps.docs
    //         .map((product) => CartProductModel.fromejason(product))
    //         .toList()
    //     : [];

    return List.generate(maps.length, (index) {
      return CartProductModel(
        // productId: maps[index]['id'],
        quantity: maps[index]['quantity'], name: maps[index]['name'],
        price: maps[index]['price'],
        image: maps[index]['image'], ID: maps[index]['ID'],
      );
    });
  }
}

_onupgrade(Database db, int oldversion, int newversion) async {
  print("upgred=============");
  await db.execute("ALTER TABLE notes ADD COLUMN title TEXT");
}

// The argument type 'CartProductModel Function(DocumentSnapshot<Object?>)' 
// can't be assigned to the parameter type 'dynamic Function(Map<dynamic, dynamic>)'.
