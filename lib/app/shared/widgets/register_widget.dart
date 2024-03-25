// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/login/views/login_view.dart';

class registerWidget extends StatelessWidget {
  FirebaseAuth Authentication = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => Authentication.authStateChanges();

  final _namaEditingController = TextEditingController();
  final _passwordEditingController = TextEditingController();
  final _emailEditingController = TextEditingController();
  final _noHpEditingController = TextEditingController();
  final timer = 3.obs;

  void handleRegister() async {
    final newAccount = {
      'nama_lengkap' : _namaEditingController.text,
      'email' : _emailEditingController.text,
      'password' : _passwordEditingController.text,
      'no_hp' : _noHpEditingController.text,

    };
    await FirebaseFirestore.instance.collection('User').add(newAccount);
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailEditingController.text, 
      password: _passwordEditingController.text);

 
    _namaEditingController.text = "";
    _emailEditingController.text = "";
    _passwordEditingController.text = "";
    _noHpEditingController.text = "";
    showDialog();
  }
  void runTimer() {
    Future.delayed(Duration(seconds: 1), () {
      timer.value--;
      if (timer.value > 0) {
        runTimer();
      } else {
        if (Get.isDialogOpen ?? false) Get.to(() => LoginView());
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
                        Get.to(() =>  LoginView());
                    }, child: Center(
                    child: Container(
                      height:50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                      ),
                      child: Text("Berhasil mendaftar",
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
         SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _namaEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/person-logo.png',scale: 2, color: Colors.black,),
                          SizedBox(width: 10),
                          Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                        ],
                      ),
                    ),
                    filled: true,
                    hintText: 'Nama Lengkap',
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
                  controller: _noHpEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/phone-logo.png',scale: 2, color: Colors.black,),
                          SizedBox(width: 10),
                          Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                        ],
                      ),
                    ),
                    filled: true,
                    hintText: 'No.Telp',
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
          SizedBox(height: 10),
            Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _emailEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/mail-logo.png',scale: 2, color: Colors.black,),
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
          SizedBox(height: 10),
            Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _passwordEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/shield-logo.png',scale: 2, color: Colors.black,),
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
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child:Text("Sandi setidaknya terdiri dari 6 karakter ",
            style: GoogleFonts.montserrat(
              fontSize: 13,
              fontWeight : FontWeight.w500,
            ),
            ),
          ),
          SizedBox(height: 50),
          Positioned(
            top: 420,
            left: 25,
            right: 25,
            child: GestureDetector(
              onTap: handleRegister,
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
                child: Text("Daftar",
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