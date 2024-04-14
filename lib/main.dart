import 'package:firebase2/controller/control_view.dart';
import 'package:firebase2/controller/mybainding.dart';
import 'package:firebase2/localization/auth_local.dart';
import 'package:firebase2/view/category.dart';
import 'package:firebase2/view/detailsView.dart';
import 'package:firebase2/view/login.dart';
import 'package:firebase2/view/signup.dart';
import 'package:firebase2/view/test.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAGEwIY4Ww0NOR786mAtAjT-kKqWX4YtN0",
          appId: "1:468291113371:android:73726b06b1ed92915d113e",
          messagingSenderId: "468291113371",
          projectId: "fluttercourse-128f2"));
  if (!kDebugMode) {
    await FirebaseAppCheck.instance.activate(
      androidProvider: AndroidProvider.playIntegrity,
      appleProvider: AppleProvider.appAttest,
      webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
    );
  } else {
    await FirebaseAppCheck.instance.activate(
      androidProvider: AndroidProvider.debug,
      appleProvider: AppleProvider.debug,
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => DetailsView(model: " "));
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
      translations: Auth_local(),
      initialBinding: Mybinding(),
      getPages: [
        // ignore: prefer_const_constructors
        GetPage(
          name: "/",
          page: () => const Loginpage(),
        ),
        GetPage(name: "/signup", page: () => const SignupPage()),
        GetPage(name: "/home", page: () => const Control_view()),
        GetPage(name: "/test", page: () => const TestPage()),
        GetPage(name: "/details", page: () => DetailsView()),
        GetPage(name: "/category", page: () => const Category_page())
      ],
    );
  }
}
