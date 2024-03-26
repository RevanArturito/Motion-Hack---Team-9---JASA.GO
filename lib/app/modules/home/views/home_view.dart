// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jasa_go/app/modules/kategori/views/kategori_view.dart';
import 'package:jasa_go/app/modules/notifikasi/views/notifikasi_view.dart';
import 'package:jasa_go/app/modules/pencarian/views/pencarian_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: berandapage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class berandapage extends StatelessWidget {
  const berandapage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Datang",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection('User')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Text("Mohon tunggu...");
                            }

                            if (!snapshot.hasData) {
                              return Text("Tidak ada data...");
                            }

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data!.docs.first['nama_lengkap'],
                                  style: GoogleFonts.montserrat(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            );
                          })
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Get.to(NotifikasiView());
                    },
                    icon: Image.asset(
                      "assets/image/icon_bell.png",
                      height: 24,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 18),
            GestureDetector(
              onTap: () {
                Get.to(() => PencarianView());
              },
              child: Container(
                height: 48,
                width: 358,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(Icons.search_rounded),
                      SizedBox(width: 10),
                      Text(
                        "Cari tukang",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Image.asset('assets/image/icon_sliders.png', scale: 4)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        toolbarHeight: 194,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 36,
              // ),
              // CarouselSlider(
              //   options: CarouselOptions(height: 100),
              //   items: [1, 2, 3, 4, 5].map((i) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return Container(
              //           width: MediaQuery.of(context).size.width,
              //           margin: EdgeInsets.symmetric(horizontal: 5.0),
              //           //decoration: BoxDecoration(color: Colors.amber),
              //           child: Image.asset("assets/image/sliders_baner.png"),
              //         );
              //       },
              //     );
              //   }).toList(),
              // ),

              CarouselDemo(),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Kategori",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // MainAxisAlignment
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => KategoriView());
                        },
                        icon: Image.asset(
                          "assets/image/button_keran.png",
                          scale: 4,
                        ),
                      ),
                      Text("Bocor"),
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => KategoriView());
                        },
                        icon: Image.asset(
                          "assets/image/button_genteng.png",
                          scale: 4,
                        ),
                      ),
                      Text("Genteng"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => KategoriView());
                        },
                        icon: Image.asset(
                          "assets/image/button_cat.png",
                          scale: 4,
                        ),
                      ),
                      Text("Cat"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => KategoriView());
                        },
                        icon: Image.asset(
                          "assets/image/button_dinding.png",
                          scale: 4,
                        ),
                      ),
                      Text("Dinding"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => KategoriView());
                        },
                        icon: Image.asset(
                          "assets/image/button_toilet.png",
                          scale: 4,
                        ),
                      ),
                      Text("Toilet"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/image/button_keramik.png",
                          scale: 4,
                        ),
                      ),
                      Text("Keramik"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => KategoriView());
                        },
                        icon: Image.asset(
                          "assets/image/button_jendela.png",
                          scale: 4,
                        ),
                      ),
                      Text("Jendela"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => KategoriView());
                        },
                        icon: Image.asset(
                          "assets/image/button_listrik.png",
                          scale: 4,
                        ),
                      ),
                      Text("Listrik"),
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

// body: const Center(
//         child: Text(
//           'HomeView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),

//

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: [
            Image.asset('assets/image/sliders_baner.png'),
          ],
          carouselController: CarouselController(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),
        // RaisedButton(
        //   onPressed: () => CarouselController().nextPage(
        //       duration: Duration(milliseconds: 300), curve: Curves.linear),
        //   child: Text('→'),
        // )
      ],
    );
  }
}
