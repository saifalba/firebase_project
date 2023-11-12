import 'package:flutter/material.dart';

class Costumlogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // padding: EdgeInsets.all(10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(50)),
      child: Image.asset(
        "images/shop.png",
        width: 100,
        height: 100,
      ),
    );
  }
}
