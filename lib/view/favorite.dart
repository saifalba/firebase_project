import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
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
              itemBuilder: (contaxt, index) => ListTile(
                    title: Text("saiff ${test[index]}"),
                    subtitle: Text("subbbbbb ${test[index]}"),
                  )),
        ));
  }
}
