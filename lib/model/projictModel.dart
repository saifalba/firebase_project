import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectModel {
  String name, price, image, ID;

  String description;

  ProjectModel(
      {required this.name,
      required this.ID,
      required this.price,
      required this.image,
      required this.description});

  factory ProjectModel.fromejason(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return ProjectModel(
      name: data['name'] as String,
      price: data['price'] as String,
      image: data['image'] as String,
      description: data['description'],
      ID: data['ID'] as String,
    );
  }

  tojason() {
    return {
      'ID': ID,
      'name': name,
      'price': price,
      'image': image,
      'decription': description,
    };
  }
}
