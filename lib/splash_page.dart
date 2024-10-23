import 'package:flutter/material.dart';
import 'package:my_shayri/app_routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _navigation() async {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.homePageRoute);
      }
    });
  }

  @override
  void initState() {
    _navigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              'assets/logo.png',
              height: 265,
              width: 300,
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
