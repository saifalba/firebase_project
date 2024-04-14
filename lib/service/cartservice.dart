// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase2/model/cartproductModel.dart';

// class ProductService {
//   final CollectionReference productsCollection =
//       FirebaseFirestore.instance.collection('Product');

//   // Fetch a list of products from Firestore
//   Future<List<CartProductModel>> getProducts() async {
//     QuerySnapshot querySnapshot = await productsCollection.get();
//     return querySnapshot.docs.map((doc) {
//       Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
//       return CartProductModel(
//         ID: doc.id,
//         name: data['name'],
//         price: data['price'],
//         image: 'Image',
//       );
//     }).toList();
//   }

//   // Get the price of a specific product by ID
//   Future<double> getProductPrice(String productId) async {
//     DocumentSnapshot doc = await productsCollection.doc(productId).get();
//     return doc['price'].toDouble();
//   }

//   gett(String productId) {
//     return getProductPrice(productId);
//   }
// }
