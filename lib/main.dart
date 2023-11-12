import 'package:firebase2/Middleware/auth_middleware.dart';
import 'package:firebase2/localization/auth_local.dart';
import 'package:firebase2/localization/home_local.dart';
import 'package:firebase2/view/home.dart';
import 'package:firebase2/view/login.dart';
import 'package:firebase2/view/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // appBarTheme: AppBarTheme(

        // )
      ),
      locale: Get.deviceLocale,
      translations: Home_local(),
      getPages: [
        // ignore: prefer_const_constructors
        GetPage(
            name: "/",
            page: () => Loginpage(),
            middlewares: [Auth_middleware()]),
        GetPage(name: "/signup", page: () => SignupPage()),
        GetPage(name: "/home", page: () => HomePage())
      ],
    );
  }
}
