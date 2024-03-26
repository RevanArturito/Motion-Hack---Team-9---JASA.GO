// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/shared/widgets/tukang.dart';

import '../controllers/pencarian_controller.dart';

class PencarianView extends GetView<PencarianController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xFF23A9F8), Color(0xFF0066FF)]),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Text(
              "Batal",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(width: 18)
        ],
        title: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Filter dan urutkan",
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
                                  Divider(color: Colors.grey, thickness: 1),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Penilaian",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.grey,
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 32),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Jarak",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.grey,
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 32),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Penilaian",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.grey,
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 48,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Color(0xFF0066FF),
                                                Color(0xFF23A9F8)
                                              ]),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Text(
                                            "Selesai",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )),
                                  SizedBox(height: 16),
                                  GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 48,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Color(0xFF0066FF)),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Text(
                                            "reset",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF0066FF)),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            );
                          });
                    },
                    icon:
                        Image.asset('assets/image/icon_sliders.png', scale: 4)),
                filled: true,
                hintText: 'Cari Tukang',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search_rounded),
                fillColor: Colors.white,
                isDense: true,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Sliders_icon(),
                  TukangFavorit(),
                  SizedBox(height: 20),
                  Tukang(
                      nama: "Andi Suherman",
                      spesialis: "cat",
                      penilaian: "4.5",
                      total_kerja: "78"),
                  SizedBox(height: 20),
                  Tukang(
                      nama: "Rudi Siswanto",
                      spesialis: "cat",
                      penilaian: "4.8",
                      total_kerja: "109"),
                  SizedBox(height: 20),
                  Tukang(
                      nama: "Cecep Budiman",
                      spesialis: "cat",
                      penilaian: "4.0",
                      total_kerja: "45"),
                  SizedBox(height: 20),
                  Tukang(
                      nama: "Toni Dermawan",
                      spesialis: "cat",
                      penilaian: "3.9",
                      total_kerja: "57"),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Sliders_icon extends StatelessWidget {
  const Sliders_icon({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          // SizedBox(
          //   height: 18,
          // ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/image/sliders_cat.png",
                  scale: 4,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/image/sliders_kebocoran.png",
                  scale: 4,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/image/sliders_genteng.png",
                  scale: 4,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/image/sliders_toilet.png",
                  scale: 4,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
