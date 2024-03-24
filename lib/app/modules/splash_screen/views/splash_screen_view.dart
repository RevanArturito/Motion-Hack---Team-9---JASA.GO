import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xFF0066FF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/image/logo_jasa_putih.png',
                height: 66,
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Image.asset(
                'assets/image/Montserrat.png',
                scale: 3.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
