import 'package:firebase2/view/AI_Page.dart';
import 'package:firebase2/view/Account.dart';
import 'package:firebase2/view/category.dart';
import 'package:firebase2/view/favorite.dart';
import 'package:firebase2/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavicatorBar_control extends GetxController {
  int _navicatorvalue = 0;
  get navigatorvalue => _navicatorvalue;
  Widget currentscreen = const HomePage();
  get _currentscreen => currentscreen;

  void changeNavicatorval(int value) {
    _navicatorvalue = value;
    switch (value) {
      case 0:
        currentscreen = const HomePage();
        break;

      case 1:
        currentscreen = const Category_page();
        break;

      case 2:
        currentscreen = const AI_page();
        break;

      case 3:
        currentscreen = const FavoritePage();
        break;

      case 4:
        currentscreen = const Account_Page();
        break;
    }
    update();
  }
}
