import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase2/components/costumlogo.dart';
import 'package:firebase2/components/textformfeld.dart';
import 'package:firebase2/controller/homeController.dart';
import 'package:firebase2/core/constant/color.dart';
import 'package:firebase2/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    final List<String> test = ['s', 's', 's', 's', 's', 's'];
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
              onTap: () {},
              child: Image.asset(
                "images/chk.png",
                height: 100,
                width: double.infinity / 200,
              )),
          backgroundColor: Appcolor.primeryColor,
          shadowColor: Colors.black,
        ),
        body: Container(
            child: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            // margin: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "serch".tr,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      filled: true,
                      fillColor: Colors.grey[200]),
                )),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                )
              ],
            ),
          ),
          Container(
              // height: 200,
              child: Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Stack(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40)),
                          child: ListTile(
                            title: Text(
                              " Daily",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Dayle discount 20% }",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Positioned(
                        top: -20,
                        right: -20,
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              color: Appcolor.secnderyColor,
                              borderRadius: BorderRadius.circular(160)),
                        ),
                      ),
                    ],
                  )))
        ])));
    ;
  }
}
