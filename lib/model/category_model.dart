import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/material.dart';

class CategoryModel {
  String name, image;
  CategoryModel({required this.name, required this.image});

  factory CategoryModel.fromjesom(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return CategoryModel(
      name: data['name'] as String,
      image: data['image'] as String,
    );
  }

  toJson() {
    return {'name': name, 'image': image};
  }
}
