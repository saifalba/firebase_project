import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Costomtextform extends StatelessWidget {
  final String hintext;
  final TextEditingController mycontroller;
  String? Function(String?)? validator;
  Costomtextform(
      {super.key,
      required this.hintext,
      required this.mycontroller,
      required this.validator});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      validator: validator,
      controller: mycontroller,
      decoration: InputDecoration(
          focusColor: Colors.blue,
          hintText: hintext,
          hintStyle: const TextStyle(fontSize: 14),
          contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 11),
          filled: true,
          fillColor: Colors.grey[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromARGB(255, 194, 194, 194)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromARGB(255, 213, 213, 213)),
          )),
    );
  }
}
