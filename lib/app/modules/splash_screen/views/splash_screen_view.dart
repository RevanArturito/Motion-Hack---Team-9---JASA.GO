import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashScreenView'),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF0066FF),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/image/logo_jasa_putih.png',
              height: 66,
            ),
          ),
          // Container(
          //   child: Image.asset('assets/image/Logo.png'),
          // ),
        ],
      ),
    );
  }
}
