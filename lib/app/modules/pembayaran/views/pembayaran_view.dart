// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/shared/widgets/pembayaran_widget.dart';

import '../controllers/pembayaran_controller.dart';

class PembayaranView extends GetView<PembayaranController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFF),
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
          "Pembayaran",
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text(
                  "Virtual Accounts",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize : 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Tanpa biaya admin",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize : 14,
                  ),
                ),
                SizedBox(height: 16),
                PembayaranWidget1(),
                SizedBox(height: 35),
                Text(
                  "E-Wallet",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize : 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Biaya admin bergantung platform",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize : 14,
                  ),
                ),
                SizedBox(height: 16),
                PembayaranWidget1_2()
              ],
            ),
          ),
        ),
      )
    );
  }
}
