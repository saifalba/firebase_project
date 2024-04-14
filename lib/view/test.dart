import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});
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
          child: ListView.builder(
              itemCount: test.length,
              itemBuilder: (contaxt, index) => Card(
                    child: Text("saiff ${test[index]}"),
                  )),
        ));
  }
}


//  Widget _ListViewOfCard() {
//     return Container(
//       height: 180,
//       width: double.infinity,
//       child: ListView.builder(
//           shrinkWrap: false,
//           scrollDirection: Axis.horizontal,
//           itemCount: test.length,
//           itemBuilder: (context, index) => Container(
//               height: 100,
//               width: 290,
//               margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//               child: Stack(
//                 children: [
//                   Container(
//                       alignment: Alignment.center,
//                       height: 180,
//                       // width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(40)),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Dayle discount 20% ",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold),
//                           ),

//                           //Image.network(src)
//                         ],
//                       )),
//                   Positioned(
//                     top: -20,
//                     right: -20,
//                     child: Container(
//                       width: 160,
//                       height: 160,
//                       decoration: BoxDecoration(
//                           color: Appcolor.secnderyColor,
//                           borderRadius: BorderRadius.circular(160)),
//                     ),
//                   ),
//                 ],
//               ))),
//     );
//   }


// Widget _ListViewOfProdict() {
//   return Container(
//       height: 200,
//       width: double.infinity,
//       child: GetBuilder<HomeController>(builder: (controller) {
//         return ListView.builder(
//             shrinkWrap: false,
//             scrollDirection: Axis.horizontal,
//             itemCount: test.length,
//             itemBuilder: (context, index) => Column(children: [
//                   Container(
//                       height: 140,
//                       width: 110,
//                       margin: EdgeInsets.only(top: 8),
//                       child: Image.network(
//                         controller.productmodel[index].image,
//                         fit: BoxFit.scaleDown,
//                       )),
//                   Text(controller.productmodel[index].name,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 15,
//                       )),
//                   Text(controller.productmodel[index].price,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold)),
//                 ]));
//       }));
// }
