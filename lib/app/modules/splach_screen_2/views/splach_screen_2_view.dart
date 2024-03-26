// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/login/views/login_view.dart';

import '../controllers/splach_screen_2_controller.dart';

class SplachScreen2View extends GetView<SplachScreen2Controller> {
  const SplachScreen2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Center(
              child : Image.asset('assets/image/logo_jasa_hitam.png', height: 66)
            ),
            SizedBox(height: 13),
            Text("Selamat Datang",
               style: GoogleFonts.montserrat(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("di ",
                  style: GoogleFonts.montserrat(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Jasa.go",
                  style: GoogleFonts.montserrat(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0066FF)
                  ),
                ),
              ],
            ),
            SizedBox(height: 26),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset('assets/image/Ellipse-left.png', color: Color(0xFFd6d6d6).withOpacity(0.6))
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('assets/image/Ellipse-right.png', color: Color(0xFFd6d6d6).withOpacity(0.6))
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("Solusi cepat dan mudah ",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color : Colors.black
                          ),
                      ),
                    ),
                    Text("untuk permasalahan rumah",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color : Colors.black
                        ),
                    ),
                    SizedBox(height: 51),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/image/orang.png'),
                    ),
                  ],
                ),
                Positioned(
                  top: 420,
                  left: 25,
                  right: 25,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(LoginView());
                    },
                    child : Container(
                      alignment: Alignment.center,
                      height: 44,
                      width: 355,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF0066FF),Color(0xFF23A9F8)],
                        ),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text("Mulai",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color : Colors.white
                        ),
                      ),
                    )
                  )
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
