import 'package:firebase2/main.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class Auth_middleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    if (sharedpref!.getString("id") != null) {
      return RouteSettings(name: "/home");
    }
    return super.redirect(route);
  }
}
