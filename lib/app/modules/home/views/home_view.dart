import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Selamat Datang",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // Text(
                    //   "John Doe",
                    //   style: GoogleFonts.montserrat(
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),

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
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/image/icon_bell.png",
                    height: 24,
                  ),
                )
              ],
            ),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Tukang keramik',
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/image/icon_sliders.png', scale: 4),
                ),
                //Image.asset('assets/image/icon_sliders.png', scale: 4),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/image/icon_search.png', scale: 4),
                ),
                //Image.asset('assets/image/icon_search.png', scale: 4),
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
        backgroundColor: Colors.blue,
        toolbarHeight: 194,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 36,
              ),
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
                        onPressed: () {},
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
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/image/button_genteng.png",
                          scale: 4,
                        ),
                      ),
                      Text("Genteng"),
                      Text("& Palfon"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
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
                        onPressed: () {},
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
                        onPressed: () {},
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
                        onPressed: () {},
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
                        onPressed: () {},
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