// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/profile_page/views/profile_page_view.dart';

import '../controllers/ubah_sandi_controller.dart';

class UbahSandiView extends GetView<UbahSandiController> {
  final _newPassController = TextEditingController();
  final _oldPassController = TextEditingController();
  final _newPassController2 = TextEditingController();
  var isButtonActive = true.obs;

  void isChange() {
    if (_newPassController.text.isNotEmpty && _newPassController2.text.isNotEmpty  && _oldPassController.text.isNotEmpty) {
      isButtonActive(false);
    } else {
      isButtonActive(true);
    }
  }
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
                        onChanged: (value) {
                          isChange();
                        },
                        controller: _oldPassController,
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
                        onChanged: (value) {
                          isChange();
                        },
                        controller: _newPassController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          filled: true,
                          hintText: 'Kata sandi baru',
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
                        onChanged: (value) {
                          isChange();
                        },
                        controller: _newPassController2,
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
              SizedBox(height: 16),
               Obx(() =>  GestureDetector(
                onTap: () {
                  Get.to(() => ProfilePageView());
                },
                child : Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 355,
                  decoration: BoxDecoration(
                    gradient: isButtonActive.value 
                    ?
                    LinearGradient(
                      colors: [Colors.grey,Colors.grey],
                    )
                    : 
                     LinearGradient(
                      colors: [Color(0xFF0066FF),Color(0xFF23A9F8)]
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text("Ubah Password",
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
            ),
          ),
        )
      )
    );
  }
}
