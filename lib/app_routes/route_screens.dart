
import 'package:flutter/material.dart';
import 'package:my_shayri/app_routes/app_routes.dart';
import 'package:my_shayri/home_page.dart';
import 'package:my_shayri/splash_page.dart';

class RouteScreen {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashRoute: (context) => const SplashPage(),
    AppRoutes.homePageRoute: (context) => const HomePage(),
  };
}
