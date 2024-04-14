import 'package:firebase2/core/constant/color.dart';
import 'package:flutter/material.dart';

class Costumlogo extends StatelessWidget {
  const Costumlogo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // padding: EdgeInsets.all(10),
      width: 200,
      height: 130,
      decoration: BoxDecoration(
          color: Appcolor.primeryColor,
          borderRadius: BorderRadius.circular(50)),
      child: Image.asset(
        "images/chk.png",
        width: 200,
        height: 200,
      ),
    );
  }
}
