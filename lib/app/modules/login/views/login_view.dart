// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/register/views/register_view.dart';
import 'package:jasa_go/app/shared/widgets/login_widget.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0066FF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 844,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/image/back-doodle.png",
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
                SizedBox(height: 122),
                Container(
                  width: double.infinity,
                  height: 562,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      children: [
                        loginWidget(),                       
                        SizedBox(height: 10),
                        Row(
                          children:[ 
                            GestureDetector(
                              onTap: () {print('tes');},
                              child: Text("Lupa kata sandi ?",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight : FontWeight.w500,
                                  color : Color(0xFF0066FF)
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 110),
                        Positioned(
                          top: 420,
                          left: 25,
                          right: 25,
                          child: GestureDetector(
                            onTap: () {print("tes");},
                            child : Container(
                              alignment: Alignment.center,
                              height: 48,
                              width: 355,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF0066FF),Color(0xFF23A9F8)],
                                ),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text("Masuk",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color : Colors.white
                                ),
                              
                              ),
                            )
                          )
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Belum punya akun ? ",
                               style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color : Color(0xFF626262)
                                ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => RegisterView(),
                              ),
                              ),
                              child: Text("DAFTAR",
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
