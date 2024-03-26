// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/dashboard/views/dashboard_view.dart';
import 'package:jasa_go/app/modules/pembayaran2/views/pembayaran2_view.dart';

class PembayaranWidget1 extends StatelessWidget {
  //const PembayaranWidget1({super.key});

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
          boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
              ),
          ],
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

class PembayaranWidget1_2 extends StatelessWidget {
  //const PembayaranWidget1({super.key});

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
          boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
              ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Column(
            children: [
              SizedBox(height: 25),
              Row(
                children: [
                  Image.asset('assets/image/gopay-logo.png', scale: 1.2),
                  SizedBox(width: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gopay",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize : 14,
                        ),
                      ),
                      Text(
                        "Biaya admin Rp.1000",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize : 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(color: Color(0xFFD1DFF3)),
              SizedBox(height: 15),
              Row(
                children: [
                  Image.asset('assets/image/dana-logo.png', scale: 1.2),
                  SizedBox(width: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dana",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize : 14,
                        ),
                      ),
                      Text(
                        "Biaya admin Rp.1500",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize : 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(color: Color(0xFFD1DFF3)),
              SizedBox(height: 15),
              Row(
                children: [
                  Image.asset('assets/image/shoppe-logo.png', scale: 1.2),
                  SizedBox(width: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ShopeePay",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize : 14,
                        ),
                      ),
                      Text(
                        "Biaya admin Rp.1000",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize : 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
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
        height: 372,
        width: 358,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
              ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Total tukang yang dipilih",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "1",
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
                    "Andi Suherman",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Cat  ",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 71),
              Row(
                children: [
                  Text(
                    "Invoice",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "GO2024032610090",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              Row(
                children: [
                  Text(
                    "Pembayaran",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "E-Walett Gopay",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              Row(
                children: [
                  Text(
                    "SubTotal",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rp.150.000",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              Row(
                children: [
                  Text(
                    "Biaya tambahan aplikasi",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rp.15.000",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              Row(
                children: [
                  Text(
                    "Biaya Administrasi",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rp.1.000",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xFFD1DFF3)),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "Total Biaya",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize : 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rp.166.000",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize : 14,
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      );
  }
}