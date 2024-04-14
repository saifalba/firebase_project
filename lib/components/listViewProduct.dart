import 'package:firebase2/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewOfProdict extends StatelessWidget {
  const ListViewOfProdict({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement createState
    return SizedBox(
        height: 200,
        width: double.infinity,
        child: GetBuilder<HomeController>(
            // init: DetailsView(),
            builder: (controller) {
          return ListView.builder(
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              itemCount: controller.productmodel.length,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      // print(
                      //     "${controller.productmodel[index].image}=====================");
                      Get.toNamed("/details",
                          arguments: controller.productmodel[index]);
                    },
                    child: Column(children: [
                      Container(
                          height: 140,
                          width: 110,
                          margin: const EdgeInsets.only(top: 8),
                          child: Image.network(
                            controller.productmodel[index].image,
                            fit: BoxFit.scaleDown,
                          )),
                      Text(controller.productmodel[index].name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                      Text(controller.productmodel[index].price,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ));
        }));
  }
}
