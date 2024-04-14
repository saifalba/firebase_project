import 'package:firebase2/controller/homeController.dart';
import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category_page extends StatelessWidget {
  const Category_page({super.key});
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    final List<String> test = ['s', 's', 's', 's', 's', 's'];
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    return GetBuilder<HomeController>(builder: (controller) {
      return controller.loading.value
          ? const CircularProgressIndicator()
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
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ListView.builder(
                    itemCount: controller.categoryModel.length,
                    itemBuilder: (contaxt, index) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          height: 170,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Stack(
                              fit: StackFit.expand,
                              alignment: AlignmentDirectional.center,
                              children: [
                                Image.network(
                                  controller.categoryModel[index].image,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  controller.categoryModel[index].name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      wordSpacing: 20,
                                      height: 3,
                                      color: Color.fromARGB(206, 255, 255, 255),
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                        )),
              ));
    });
  }
}
