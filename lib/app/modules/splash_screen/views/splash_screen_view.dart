import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jasa_go/app/modules/splach_screen_2/views/splach_screen_2_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => SplachScreen2View(),
          ),
          (route) => false);
    });

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
