// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/kategori/views/kategori_view.dart';
import 'package:jasa_go/app/modules/map/views/map_view.dart';
import 'package:jasa_go/app/modules/pembayaran/views/pembayaran_view.dart';

import '../controllers/pesan_tukang_controller.dart';

class PesanTukangView extends GetView<PesanTukangController> {
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
          "Pesan Tukang",
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 20),
              GestureDetector(
                child: Container(
                  width: 358,
                  height: 371,
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
                    child: Column(
                       children: [
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Image.asset('assets/image/tukang.png', height: 92,width: 79,),
                            SizedBox(width: 8),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Andi Suherman",
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
                                      "Cat",
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
                                      "4.5",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:11,
                                      ),
                                    ),
                                    SizedBox(width: 55),
                                    Text(
                                      "78",
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
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerLeft ,
                          child: Text(
                            "Perbaikan apa yang anda butuhkan ?",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:14,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 64,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Cat",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize:14,
                                      ),  
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Dinding",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize:14,
                                      ),
                                      
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              child: Container(
                                height: 64,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Cat",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize:14,
                                      ),  
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Plafon",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize:14,
                                      ),
                                      
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              child: Container(
                                height: 64,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Cat",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize:14,
                                      ),  
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Pintu",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize:14,
                                      ),
                                      
                                    ),
                                  ],
                                ),
                              ),
                            )
                          
                          ],
                        ),
                        SizedBox(height: 15,),
                        GestureDetector(
                              child: Container(
                                height: 48,
                                width: 326,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:15),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Cat lainnya",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:14,
                                        ),  
                                      ),
                                    ), 
                                  ],
                                ),
                              ),
                            ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => KategoriView());
                          },
                              child: Container(
                                height: 48,
                                width: 326,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF0066FF)),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width:15),
                                    Image.asset('assets/image/add-tukang.png',scale: 1.2,color: Color(0xFF0066FF)),
                                    SizedBox(width: 7),
                                    Text(
                                      "Tambah tukang",
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xFF0066FF),
                                        fontWeight: FontWeight.bold,
                                        fontSize:14,
                                      ),  
                                    ),
                                  ],
                                ),
                              ),
                            )
                        
                       ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Container(
                height: 128,
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
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox(height: 22),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context, 
                            builder: (BuildContext context) {
                              return Container(
                                height: 400,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(height: 35),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 24),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Alamat Kamu",
                                            style: GoogleFonts.montserrat(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Text(
                                              "Batal",
                                              style: GoogleFonts.montserrat(
                                                color: Color(0xFF0066FF),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 24),
                                    Divider(color: Colors.grey,thickness: 1 ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 24),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              child: Container(
                                                height: 92,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Sen",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "1 Apr",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              
                                            ),
                                            SizedBox(width: 16),
                                            GestureDetector(
                                              child: Container(
                                                height: 92,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Sel",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "2 Apr",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 16),
                                            GestureDetector(
                                              child: Container(
                                                height: 92,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Rab",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "3 Apr",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                             SizedBox(width: 16),
                                            GestureDetector(
                                              child: Container(
                                                height: 92,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Kam",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "4 Apr",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                             SizedBox(width: 16),
                                            GestureDetector(
                                              child: Container(
                                                height: 92,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Jum",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "5 Apr",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                             SizedBox(width: 16),
                                            GestureDetector(
                                              child: Container(
                                                height: 92,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Sab",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "6 Apr",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                             SizedBox(width: 16),
                                            GestureDetector(
                                              child: Container(
                                                height: 92,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Min",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "7 Apr",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 24),
                                    SizedBox(height: 16),
                                    GestureDetector(
                                    onTap: () {
                                      
                                    },
                                    child : Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 24),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 48,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(color:  Colors.black),
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Row(
                                            children: [
                                              Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Pilih Waktu",
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color : Colors.black
                                                ),
                                              ),
                                              ),
                                              Spacer(),
                                              Icon(Icons.keyboard_arrow_down_rounded)
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                    )
                                  ],
                                ),
                              );
                            }
                          );
                        
                        },
                        child: Row(
                          children: [
                            Image.asset('assets/image/clock.png'),
                            SizedBox(width: 20),
                            Text(
                              "Pilih jadwal",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Color(0xFFD1DFF3)),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(()=> MapView());
                        },
                        child: Row(
                          children: [
                            Image.asset('assets/image/gps.png'),
                            SizedBox(width: 20),
                            Text(
                              "Pilih alamat",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 60),
               GestureDetector(
                onTap: () {
                  Get.to(() => PembayaranView());
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
            ],
          ),
        ),
      ),
    );
  }
}
