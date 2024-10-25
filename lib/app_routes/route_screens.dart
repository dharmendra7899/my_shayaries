import 'package:flutter/material.dart';
import 'package:my_shayri/app_routes/app_routes.dart';
import 'package:my_shayri/dasboard_screen.dart';
import 'package:my_shayri/splash_page.dart';

class RouteScreen {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashRoute: (context) => const SplashPage(),
    AppRoutes.dashboardPageRoute: (context) => const Dashboard(),
  };
}
