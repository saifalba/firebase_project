import 'package:cloud_firestore/cloud_firestore.dart';

class CartProductModel {
  String name, price, image, ID;

  int quantity;

  CartProductModel({
    required this.quantity,
    required this.ID,
    required this.name,
    required this.price,
    required this.image,
  });

  factory CartProductModel.fromejason(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return CartProductModel(
      quantity: data['quantity'],
      name: data['name'] as String,
      price: data['price'] as String,
      image: data['image'] as String,
      ID: data['ID'],
    );
  }

  tojason() {
    return {
      'quantity': quantity,
      'name': name,
      'price': price,
      'ID': ID,
      'image': image,
    };
  }
}
