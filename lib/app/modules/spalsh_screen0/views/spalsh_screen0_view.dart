import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jasa_go/app/modules/splash_screen/views/splash_screen_view.dart';

import '../controllers/spalsh_screen0_controller.dart';

class SpalshScreen0View extends GetView<SpalshScreen0Controller> {
  const SpalshScreen0View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => SplashScreenView(),
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
          ],
        ),
      ),
    );
  }
}
