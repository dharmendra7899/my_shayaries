import 'package:flutter/material.dart';
import 'package:my_shayri/styles/app_theme.dart';
import 'app_routes/app_routes.dart';
import 'app_routes/route_screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shayari',
      themeMode: ThemeMode.light,
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashRoute,
      routes: RouteScreen.routes,
    );
  }
}

