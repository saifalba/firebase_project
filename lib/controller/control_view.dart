import 'package:firebase2/controller/bottomNavicatorbar_controller.dart';
import 'package:firebase2/controller/logincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Control_view extends GetWidget<LoginController> {
  const Control_view({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavicatorBar_control>(
        builder: (controller) => Scaffold(
              body: controller.currentscreen,
              bottomNavigationBar: _bottomNavicatorBar(),
            ));
  }
}

Widget _bottomNavicatorBar() {
  return GetBuilder<NavicatorBar_control>(
    init: NavicatorBar_control(),
    builder: (controller) => BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 143, 105, 0),
        currentIndex: controller.navigatorvalue,
        onTap: (index) {
          controller.changeNavicatorval(index);
        },
        items: [
          BottomNavigationBarItem(
              activeIcon: const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 207, 179, 103),
                  ),
                ),
              ),
              icon: Image.asset(
                "images/home.png",
                width: 25,
                height: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              activeIcon: const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 143, 105, 0),
                  ),
                ),
              ),
              icon: Image.asset(
                "images/menu.png",
                width: 25,
                height: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              activeIcon: const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "AI",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 143, 105, 0),
                  ),
                ),
              ),
              icon: Image.asset(
                "images/glasses.png",
                width: 25,
                height: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              activeIcon: const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Favorite",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 143, 105, 0),
                  ),
                ),
              ),
              icon: Image.asset(
                "images/favorite.png",
                width: 25,
                height: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              activeIcon: const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 143, 105, 0),
                  ),
                ),
              ),
              icon: Image.asset(
                "images/account.png",
                width: 25,
                height: 25,
              ),
              label: ""),
        ]),
  );
}
