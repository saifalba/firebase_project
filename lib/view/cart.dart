import 'package:firebase2/controller/cartController.dart';
import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    //CartController cartcontroller = Get.put(CartController());

    // final List<String> test = ['s', 's', 's', 's', 's', 's'];

    return Scaffold(
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              padding: const EdgeInsets.only(left: 30, right: 20),
              onPressed: () {},
              color: Appcolor.primeryColor,
              textColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const Text(
                "Check Out",
                style: TextStyle(fontSize: 20, color: Appcolor.secnderyColor),
              ),
            ),
            const Text("Total:  ",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Appcolor.secnderyColor,
                    fontSize: 20,
                    fontWeight: FontWeight.normal)),
            GetBuilder<CartController>(
                init: Get.put(CartController()),
                builder: (controller) {
                  return Text("${controller.getTOtelPrice()}",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Appcolor.secnderyColor,
                          fontSize: 20,
                          fontWeight: FontWeight.normal));
                }),
          ],
        ),
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
        body: GetBuilder<CartController>(
            init: CartController(),
            builder: (controller) {
              return Container(
                  child: ListView.builder(
                      itemCount: controller.cartProductModel.length,
                      itemBuilder: (contaxt, index) {
                        return Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 140,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.network(
                                      controller.cartProductModel[index].image,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(controller.cartProductModel[index].name,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(controller.cartProductModel[index].price,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Appcolor.secnderyColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                              Row(
                                //  mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: const Text("-",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Appcolor.secnderyColor,
                                            fontSize: 50,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    child: Text(
                                        "${controller.cartProductModel[index].quantity}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Appcolor.secnderyColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Text("+",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Appcolor.secnderyColor,
                                            fontSize: 30,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }));
            }));
  }
}
