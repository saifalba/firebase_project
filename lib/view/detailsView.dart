
import 'package:firebase2/controller/cartController.dart';
import 'package:firebase2/model/cartproductModel.dart';

import '../controller/homeController.dart';
import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DetailsView extends StatelessWidget {
  final dynamic model = Get.arguments;

   DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double dynamicHeight = screenHeight * 0.33;
    CartController cartcontroller = Get.put(CartController());

    return Scaffold(
      bottomSheet: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        GetBuilder<CartController>(
          init: CartController(),
          builder: (controller) => MaterialButton(
            padding: const EdgeInsets.only(left: 30, right: 20),
            onPressed: () async {
              controller.addProduct(CartProductModel(
                  quantity: 1,
                  name: model.name,
                  price: model.price,
                  image: model.image,
                  ID: model.ID));
              print(controller.getAllproduct());
            },
            color: Appcolor.primeryColor,
            textColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            child: const Text(
              "Add to cart",
              style: TextStyle(fontSize: 20, color: Appcolor.secnderyColor),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        MaterialButton(
          // minWidth: 10,
          padding: const EdgeInsets.only(left: 30, right: 50),
          onPressed: () {},
          color: Appcolor.primeryColor,
          textColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Image.asset(
            "images/favorite.png",
            width: 25,
            height: 25,
          ),
        ),
      ]),
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
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GetBuilder<HomeController>(builder: (controller) {
          return ListView(
            // padding: EdgeInsets.only(),
            children: [
              Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 245,
                        245), // You can set the background color of the container
                    borderRadius: BorderRadius.circular(10.0)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      model.image,
                      // fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${model.name}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      Text(model.price + "د.ع",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Appcolor.secnderyColor,
                              fontSize: 20,
                              fontWeight: FontWeight.normal)),
                    ]),
              ),
              Text(model.description.toString(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Appcolor.secnderyColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal)),
              SizedBox(
                height: dynamicHeight,
              ),
              // Padding(
              // padding: const EdgeInsets.only(right: 70, left: 20),

              //
            ],
          );
        }),
      ),
    );
  }
}
