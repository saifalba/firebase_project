import 'package:firebase2/controller/bottomNavicatorbar_controller.dart';
import 'package:firebase2/controller/cartController.dart';
import 'package:firebase2/controller/homeController.dart';
import 'package:firebase2/controller/logincontroller.dart';
import 'package:firebase2/controller/signup_controller.dart';
import 'package:get/get.dart';

class Mybinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => SignupController());
    Get.lazyPut(() => NavicatorBar_control());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CartController());
    //  Get.lazyPut(() => CartProductModel());
  }
}
