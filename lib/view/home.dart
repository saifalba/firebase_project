import 'package:firebase2/controller/homeController.dart';
import 'package:firebase2/core/constant/color.dart';
import 'package:firebase2/components/listViewProduct.dart';
import 'package:firebase2/view/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (controller) {
      return controller.loading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
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
                  // padding: EdgeInsets.all(15),
                  child: ListView(children: [
                _SerchRow(),
                SizedBox(
                  height: 170,
                  width: double.infinity,
                  child: ListView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.categoryModel.length,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Get.toNamed("/category");
                            },
                            child: Container(
                                height: 100,
                                width: 290,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit.expand,
                                  children: [
                                    Container(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Row(
                                          children: [
                                            Text(
                                              controller
                                                  .categoryModel[index].name,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )),
                                    Positioned(
                                      top: -20,
                                      right: -20,
                                      child: Container(
                                        width: 160,
                                        height: 160,
                                        decoration: BoxDecoration(
                                            color: Appcolor.secnderyColor,
                                            borderRadius:
                                                BorderRadius.circular(160)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(160),
                                          child: Image.network(
                                            controller
                                                .categoryModel[index].image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                ),
                _prodictFeld("popular prodict"),
                const ListViewOfProdict(),
                _prodictFeld("man"),
                const ListViewOfProdict()
              ])),
            );
    });
  }

  Widget _SerchRow() {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
                hintText: "serch".tr,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                filled: true,
                fillColor: Colors.grey[200]),
          )),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
                onPressed: () {
                  Get.to(const CartPage());
                },
                icon: const Icon(Icons.shopping_cart)),
          )
        ],
      ),
    );
  }
}

Widget _prodictFeld(String title) {
  return Container(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        InkWell(
            onTap: () {},
            child: Text("see all".tr,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ))),
      ],
    ),
  );
}
