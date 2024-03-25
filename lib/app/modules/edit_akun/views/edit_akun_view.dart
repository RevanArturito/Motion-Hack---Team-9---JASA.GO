import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/login/views/login_view.dart';
import 'package:jasa_go/app/shared/widgets/edit_akun_widget.dart';

import '../controllers/edit_akun_controller.dart';

class EditAkunView extends GetView<EditAkunController> {
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
          "Edit Akun",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 24),
                  Align(
                    child: CircleAvatar(
                      radius: 50,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration (
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xFF0066FF),Color(0xFF23A9F8)],
                          ),
                        ),
                        child: Image.asset('assets/image/avatar.png'),
                      ),
                    ),
                  ),
            EditAkunWidget(),
            SizedBox(height: 288),
            GestureDetector(
              onTap : () {
                Get.to(() => LoginView());
              },
              child: Container(
                height: 48,
                width: 358,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/image/log-out-02.png'),
                      SizedBox(width: 16),
                      Text('Logout', 
                      style: GoogleFonts.montserrat(
                        fontSize : 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
