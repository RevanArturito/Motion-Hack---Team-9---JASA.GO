import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    Text(
                      "John Doe",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                suffixIcon:
                    Image.asset('assets/image/icon_sliders.png', scale: 4),
                prefixIcon:
                    Image.asset('assets/image/icon_search.png', scale: 4),
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
        toolbarHeight: 160,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          Text(
            "Kategori",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
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