import "../main.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formstat = GlobalKey<FormState>();
  final FirebaseAuth autt = FirebaseAuth.instance;
  void onlogin() {
    loginAccount(emailcontroller.text, passwordcontroller.text);
  }

  Future<String> loginAccount(String email, String password) async {
    if (formstat.currentState!.validate()) {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        print("${autt.currentUser!.emailVerified}" "=============");
        if (autt.currentUser!.emailVerified == true) {
          sharedpref!.setString("id", "1");
          Get.offAllNamed("/home");
        } else {
          autt.currentUser!.sendEmailVerification();
        }

        return "";
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
          Get.snackbar("Erore", "User not found");
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
          Get.snackbar("Erore", "wrong password");
        }
        return "";
      }
    } else {
      print("not val");
    }
    return "";
  }

//===================login with google

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;

      return user;
    } catch (e) {
      print("Error during Google Sign-In: $e");
      return null;
    }
  }
}
