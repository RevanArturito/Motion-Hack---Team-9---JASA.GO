// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/dashboard/views/dashboard_view.dart';
import 'package:jasa_go/app/modules/pembayaran2/views/pembayaran2_view.dart';

class PembayaranWidget1 extends StatelessWidget {
  //const PembayaranWidget1({super.key});
  final timer = 2.obs;
  void runTimer() {
    Future.delayed(Duration(seconds: 1), () {
      timer.value--;
      if (timer.value > 0) {
        runTimer();
      } else {
        if (Get.isDialogOpen ?? false) Get.to(() => DashboardView());
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
                        Get.to(() => DashboardView());
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
    return GestureDetector(
      onTap: () {
        Get.to(() => Pembayaran2View());
      },
      child: Container(
        height: 291,
        width: 358,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Column(
            children: [
              SizedBox(height: 25),
              Row(
                children: [
                  Image.asset('assets/image/bca-logo.png', scale: 1.2),
                  SizedBox(width: 32),
                  Text(
                    "BCA Virtual Account",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(color: Color(0xFFD1DFF3)),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset('assets/image/mandiri-logo.png'),
                  SizedBox(width: 17),
                  Text(
                    "Mandiri Virtual Account",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Divider(color: Color(0xFFD1DFF3)),
              SizedBox(height: 25),
              Row(
                children: [
                  Image.asset('assets/image/bni-logo.png', scale: 1.2),
                  SizedBox(width: 32),
                  Text(
                    "BNI Virtual Account",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PembayaranWidget2 extends StatelessWidget {
  const PembayaranWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 291,
        width: 358,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Total harga",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rp.150.000",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Color(0xFFD1DFF3)),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "Invoice",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "GO2024032610090",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              GestureDetector(
                onTap: () {
                  Get.to(() => DashboardView());
                },
                child : Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 355,
                  decoration: BoxDecoration(
                    gradient : LinearGradient(
                      colors: [Color(0xFF0066FF),Color(0xFF23A9F8)]
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text("Bayar Sekarang",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color : Colors.white
                    ),
                  ),
                )
              ),
              SizedBox(height: 15),
              Text(
                "Dengan melakukan pembayaran Anda menyetujui",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize : 11,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children : [
                Text( "seluruh ",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize : 11,
                  ), 
                ),
                Text( "Syarat & Ketentuan ",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF0066FF),
                    fontWeight: FontWeight.w500,
                    fontSize : 11,
                  ), 
                ),
                Text( "jasa.go",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize : 11,
                  ), 
                ),
               ]   
              ),
            ],
          ),
        ),
      );
  }
}