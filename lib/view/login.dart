
import 'package:firebase2/components/costumlogo.dart';
import 'package:firebase2/components/textformfeld.dart';
import 'package:firebase2/controller/logincontroller.dart';
import 'package:firebase2/core/constant/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    // Get.find();

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30),
      child: ListView(children: [
        const SizedBox(
          height: 30,
        ),
        Form(
          key: loginController.formstat,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Costumlogo(),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Login".tr,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "logintxt".tr,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Email".tr,
                style:
                    const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
              ),
              Costomtextform(
                hintext: "Email_hint".tr,
                mycontroller: loginController.emailcontroller,
                validator: (val) {
                  if (val == "") {
                    return "can't to be Empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Password".tr,
                style:
                    const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
              ),
              Costomtextform(
                hintext: "Password_hint".tr,
                mycontroller: loginController.passwordcontroller,
                validator: (val) {
                  if (val == "") {
                    return "can't to be Empty";
                  }
                  return null;
                },
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    FirebaseAuth.instance.sendPasswordResetEmail(
                        email: loginController.emailcontroller.text);
                  },
                  child: Text("forget".tr),
                ),
              ),
              Container(
                width: double.infinity / 20,
                height: 50,
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Appcolor.primeryColor),
                child: MaterialButton(
                  onPressed: () {
                    loginController.onlogin();
                    // Get.snackbar("Verify".tr, "massege".tr,
                    //     backgroundColor: Colors.blue);
                  },
                  color: Appcolor.primeryColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Login".tr,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text("other".tr)),
            ],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            width: 100,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            // padding: EdgeInsets.all(5),
            child: MaterialButton(
              onPressed: () {
                loginController.signInWithGoogle();
              },
              color: Colors.grey[200],
              child: Image.asset(
                "images/google.png",
                height: 30,
                width: 30,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 100,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            // padding: EdgeInsets.all(5),
            child: MaterialButton(
              onPressed: () {
                //add verification

                // FirebaseAuth.instance.currentUser?.sendEmailVerification();
              },
              color: Colors.grey[200],
              child: Image.asset(
                "images/f.png",
                height: 30,
                width: 30,
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Regester".tr),
            InkWell(
              onTap: () {
                Get.toNamed("/signup");
              },
              child: Text(
                "sinin".tr,
                style: const TextStyle(color: Appcolor.primeryColor),
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
