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
      backgroundColor: Color(0xFFD1DFF3),
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
          child: Column(
            children: [
              SizedBox(height: 28),
              Align(
                child: Container(
                  height: 65,
                  width: 359,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16 ),
                    child: 
                      Padding(
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            Text(
                              "Sisa Waktu Pembayaran",
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFC90C00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0.59.59",
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFC90C00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ) 
                      ),
                  ),
                ),
              ),
              SizedBox(height: 29),
              PembayaranWidget1()
            ],
          ),
        ),
      )
    );
  }
}
