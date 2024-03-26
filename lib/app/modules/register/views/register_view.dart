// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/login/views/login_view.dart';
import 'package:jasa_go/app/shared/widgets/register_widget.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0066FF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 684,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/background/back-doodle.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 140),  
                Align(
                  child: Image.asset(
                    'assets/image/logo_jasa_putih.png', 
                    height: 66
                  )
                ),
                SizedBox(height: 68),
                Container(
                  width: double.infinity,
                  height: 684,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      children: [
                        SizedBox(height: 25),
                        Text("Daftar",
                          style: GoogleFonts.montserrat(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0066FF)
                          ),
                        ),
                        registerWidget(),
                        
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dengan mendaftar kamu menyetujui ",
                               style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color : Color(0xFF626262)
                                ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             GestureDetector(
                              onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginView(),
                              ),
                              ),
                              child: Text("Syarat dan Ketentuan ",
                               style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color : Color(0xFF0066FF),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF0066FF),
                                  decorationThickness: 2,
                                ),
                            ),
                            ),
                            Text("dan  ",
                               style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color : Color(0xFF626262)
                                ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginView(),
                              ),
                              ),
                              child: Text("Kevijakan Privasi",
                               style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color : Color(0xFF0066FF),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF0066FF),
                                  decorationThickness: 2,
                                ),
                            ),
                            ),
                            Text(" Jasa.go  ",
                               style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color : Color(0xFF626262)
                                ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sudah punya akun ? ",
                               style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color : Color(0xFF626262)
                                ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginView(),
                              ),
                              ),
                              child: Text("MASUK",
                               style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color : Color(0xFF0066FF),
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF0066FF),
                                  decorationThickness: 2,
                                ),
                            ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
