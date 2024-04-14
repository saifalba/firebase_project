import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';

class AI_page extends StatelessWidget {
  const AI_page({super.key});
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.amber[100],
                radius: 100,
                child: Center(child: Text("your face")),
              ),
            ),
            MaterialButton(
              minWidth: 200,
              height: 50,
              onPressed: () {},
              color: Appcolor.primeryColor,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                "find class",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ));
  }
}
