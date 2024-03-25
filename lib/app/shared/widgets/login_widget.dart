// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/controllers/authentication.dart';
import 'package:jasa_go/app/modules/home/views/home_view.dart';
import 'package:jasa_go/app/modules/login/views/login_view.dart';
import 'package:jasa_go/app/modules/profile_page/views/profile_page_view.dart';
import 'package:jasa_go/app/modules/register/views/register_view.dart';
import 'package:jasa_go/app/routes/app_pages.dart';

class loginWidget extends StatelessWidget {
  AuthenticationController Authentication = AuthenticationController();
  final _passwordEditingController = TextEditingController();
  final _emailEditingController = TextEditingController();
  final timer = 2.obs;

  void runTimer() {
    Future.delayed(Duration(seconds: 1), () {
      timer.value--;
      if (timer.value > 0) {
        runTimer();
      } else {
        if (Get.isDialogOpen ?? false) Get.to(() => ProfilePageView());
      }
    });
  }

  
  void showDialog() {
    timer.value = 2;
    runTimer();
    Get.dialog(
        barrierDismissible: false,
        Dialog(
          backgroundColor: Colors.transparent,
          child: PopScope(
          
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 31),
                  Image.asset("assets/image/check-circle-broken.png"),
                  SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                        Get.to(() =>  RegisterView());
                    }, child: Center(
                    child: Container(
                      height:50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                      ),
                      child: Text("Berhasil login",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color : Colors.black
                        ),
                      
                      ),
                    ),
                  ),),
                ],
              ),
            ),
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45),
        Text("Masuk",
            style: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0066FF)
            ),
          ),
        SizedBox(height: 60),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _emailEditingController,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.mail_outline_rounded),
                        SizedBox(width: 10),
                        Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                      ],
                    ),
                  ),
                  filled: true,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(color: Color(0xFF0066FF))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFB1B1B1)),
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
              ),
            )
          ],
        ),
        SizedBox(height: 13),
          Row(
          children: [
            Expanded(
              child: TextField(
                controller: _passwordEditingController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/image/passcode.png',scale: 2),
                        SizedBox(width: 10),
                        Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                      ],
                    ),
                  ),
                  filled: true,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 13.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:  BorderSide(color: Color(0xFF0066FF))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFB1B1B1)),
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
              ),
            )
          ],
        ),
        SizedBox(height: 110),
          Positioned(
            top: 420,
            left: 25,
            right: 25,
            child: GestureDetector(
              onTap: () {Authentication
                .handleLogin(_emailEditingController.text, _passwordEditingController.text)
                .then((lohjin) {
                  if (lohjin) {
                    showDialog();
                    
                  } else {
                    
                  }
                });
              },
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
      ],
    );
  }
}