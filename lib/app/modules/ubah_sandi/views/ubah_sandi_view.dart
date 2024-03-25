// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/ubah_sandi_controller.dart';

class UbahSandiView extends GetView<UbahSandiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86, 
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xFF23A9F8), Color(0xFF0066FF)]),
          ),
        ),
        title: Text(
          "Ubah Kata Sandi",
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed:  () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white),
      ),
      body: SafeArea(
        // ignore: prefer_const_constructors
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text(
                  "Masukkan kata sandi baru Anda",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize : 16,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        //controller: _emailEditingController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          filled: true,
                          hintText: 'Kata sandi lama',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            
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
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        //controller: _emailEditingController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          filled: true,
                          hintText: 'Kata sandi baaru',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
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
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        //controller: _emailEditingController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          filled: true,
                          hintText: 'Masukkan kembali kata sandi baru',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
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
              ],
            ),
          ),
        )
      )
    );
  }
}
