import 'package:firebase2/model/cartproductModel.dart';

import 'package:firebase2/service/databaseService/CartDatabase_Helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> get _loading => ValueNotifier(false);
  List<CartProductModel> _cartProductModel = [];
  List<CartProductModel> get cartProductModel => _cartProductModel;
  double get totelprice => _totleprice;
  double _totleprice = 0.0;

  CartController() {
    getAllproduct();
    getTOtelPrice();
  }

  getAllproduct() async {
    _loading.value = true;
    var dbHelper = CartDatabaseHelper();
    _cartProductModel = await dbHelper.getAllProduct();
    print("${_cartProductModel.length} length ====");

    _loading.value = false;
    getTOtelPrice();
    update();
  }

  getTOtelPrice() {
    for (int i = 0; i < _cartProductModel.length; i++) {
      _totleprice += (double.parse(_cartProductModel[i].price) *
          _cartProductModel[i].quantity);
      print("${double.parse(_cartProductModel[i].price)} price =====");
      print("${_cartProductModel[i].quantity} quantity =====");
      // break;
    }

    print("$_totleprice _totleprice =====");
    return _totleprice;
  }

  addProduct(CartProductModel cartProductModel) async {
    for (var i = 0; i < _cartProductModel.length; i++) {
      if (_cartProductModel[i].ID == cartProductModel.ID) {
        return;
      }
    }
    var dbHelper = CartDatabaseHelper();
    await dbHelper.insertDb(cartProductModel);
    _cartProductModel.add(cartProductModel);
    _totleprice +=
        (double.parse(cartProductModel.price) * cartProductModel.quantity);

    update();
  }
}
