// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase2/model/category_model.dart';
import 'package:firebase2/model/projictModel.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  final ValueNotifier<bool> _loading = ValueNotifier(false);

  // ignore: non_constant_identifier_names
  List<CategoryModel> get Category_Model => categoryModel;
  List<CategoryModel> categoryModel = [];
  // ignore: non_constant_identifier_names
  List<ProjectModel> get project_Model => productmodel;
  List<ProjectModel> productmodel = [];

  final CollectionReference _categoryReference =
      FirebaseFirestore.instance.collection("categories");

  final CollectionReference _productReference =
      FirebaseFirestore.instance.collection("Product");

  HomeController() {
    get_Category();
    get_Project();
  }

  // ignore: non_constant_identifier_names
  get_Category() async {
    _loading.value = true;
    QuerySnapshot querySnapshot = await _categoryReference.get();
    categoryModel = querySnapshot.docs.map((DocumentSnapshot document) {
      return CategoryModel.fromjesom(document);
    }).toList();
    _loading.value = false;

    update();
  }

  // ignore: non_constant_identifier_names
  get_Project() async {
    _loading.value = true;
    QuerySnapshot querySnapshot = await _productReference.get();
    productmodel = querySnapshot.docs.map((DocumentSnapshot document) {
      return ProjectModel.fromejason(document);
    }).toList();

    _loading.value = false;
    update();
  }
}
