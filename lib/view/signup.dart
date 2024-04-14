//import 'package:firebase2/components/costumlogo.dart';
import 'package:firebase2/components/textformfeld.dart';
import 'package:firebase2/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.put(SignupController());
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "signup".tr,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "signuptxt".tr,
              style: const TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "fname".tr,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
            ),
            Costomtextform(
              hintext: "hintn1".tr,
              mycontroller: signupController.fnamecontroller,
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
              "lname".tr,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
            ),
            Costomtextform(
              hintext: "hintn2".tr,
              mycontroller: signupController.lnamecontroller,
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
              "phone".tr,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
            ),
            Costomtextform(
              hintext: "hintphone".tr,
              mycontroller: signupController.phonecontroller,
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
              "Email".tr,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
            ),
            Costomtextform(
              hintext: "Email_hint".tr,
              mycontroller: signupController.emailcontroller,
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
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
            ),
            Costomtextform(
              hintext: "Password_hint".tr,
              mycontroller: signupController.passwordcontroller,
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
                onTap: () {},
                child: Text("forget".tr),
              ),
            ),
            Container(
              width: double.infinity / 20,
              height: 50,
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: MaterialButton(
                onPressed: () {
                  signupController.onsignup();
                  //Get.offNamed("/");
                  // Get.snackbar("Verify".tr, "massege".tr);
                },
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "signup".tr,
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
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            width: 100,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            // padding: EdgeInsets.all(5),
            child: MaterialButton(
              onPressed: () {},
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
              onPressed: () {},
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
            Text("loginP".tr),
            InkWell(
              onTap: () {
                Get.toNamed("/");
              },
              child: Text(
                "Login".tr,
                style: const TextStyle(color: Colors.blue),
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
