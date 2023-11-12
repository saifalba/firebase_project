import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController fnamecontroller = TextEditingController();
  final TextEditingController lnamecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

  void onsignup() {
    print("name:" + fnamecontroller.text);
    print("lasta name:" + lnamecontroller.text);
    print("ph:" + passwordcontroller.text);
    print("em:" + emailcontroller.text);
    print("pass:" + passwordcontroller.text);
    creatAccount(emailcontroller.text, passwordcontroller.text);
    FirebaseAuth.instance.currentUser?.emailVerified;
  }

  Future<String> creatAccount(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      return "";
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        print("weak password");
      } else if (ex.code == "email-already-in-use") {
        return "Email already used";
      }
      return "";
    } catch (ex) {
      print(ex);
      return "";
    }
  }
}
