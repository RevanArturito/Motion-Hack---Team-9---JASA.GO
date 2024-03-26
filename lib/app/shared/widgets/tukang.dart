// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/pesan_tukang/views/pesan_tukang_view.dart';

class TukangFavorit extends StatelessWidget {
  const TukangFavorit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 348,
      width: 358,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            SizedBox(height: 25),
            Row(
              children: [
                Text(
                  "Tukang favorit saat ini ",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize:15,
                  ),
                ),
                Spacer(),
                Text(
                  "Lihat Semua ",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF0066FF),
                    fontWeight: FontWeight.bold,
                    fontSize:11,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    //Get.to(() => KategoriView());
                  },
                  icon: Image.asset(
                    "assets/image/button_keran.png",
                    scale: 4,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ahli Kebocoran ",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize:14,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Betulkan genteng atau bagian  ",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize:11,
                      ),
                    ),
                    Text(
                      "rumah lainnya yang rentan bocor ",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize:11,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(color: Color(0xFFD1DFF3)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    //Get.to(() => KategoriView());
                  },
                  icon: Image.asset(
                    "assets/image/button_listrik.png",
                    scale: 4,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ahli Listrik ",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize:14,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Betulkan permasalahan tentang",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize:11,
                      ),
                    ),
                    Text(
                      "listrik pada rumah anda ",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize:11,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(color: Color(0xFFD1DFF3)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    //Get.to(() => KategoriView());
                  },
                  icon: Image.asset(
                    "assets/image/button_cat.png",
                    scale: 4,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ahli Cat ",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize:14,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Bantu melakukan cat dasar, ",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize:11,
                      ),
                    ),
                    Text(
                      "finishing dan  lainnya ",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize:11,
                      ),
                    ),
                  ],
                )
              ],
            ),
              
          ],
        ),
      ),
    );
  }
}

class Tukang extends StatelessWidget {
  final String nama;
  final String spesialis;
  final String penilaian;
  final String total_kerja;
  
  const Tukang({
    super.key,
    required this.nama,
    required this.spesialis,
    required this.penilaian,
    required this.total_kerja
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PesanTukangView());
      },
      child: Container(
        width: 358,
        height: 120,
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
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset('assets/image/tukang.png', height: 92,width: 79,),
              SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize:20,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Spelialis ",
                        style: GoogleFonts.montserrat(
                          color: Color(0xFF8301C1),
                          fontWeight: FontWeight.w500,
                          fontSize:14,
                        ),
                      ),
                      Text(
                        spesialis,
                        style: GoogleFonts.montserrat(
                          color: Color(0xFF8301C1),
                          fontWeight: FontWeight.w500,
                          fontSize:14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Penilaian",
                        style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize:11,
                        ),
                      ),
                      SizedBox(width: 35),
                      Text(
                        "Total kerja selesai",
                        style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize:11,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/image/star-logo.png',scale: 1.2),
                      SizedBox(width: 5),
                      Text(
                        penilaian,
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize:11,
                        ),
                      ),
                      SizedBox(width: 55),
                      Text(
                        total_kerja,
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize:11,
                        ),
                      ),
                    ],
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