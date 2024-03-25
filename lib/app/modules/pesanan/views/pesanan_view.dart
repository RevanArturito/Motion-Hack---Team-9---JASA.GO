import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/pesanan_controller.dart';

class PesananView extends GetView<PesananController> {
  const PesananView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PesananPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PesananPage extends StatelessWidget {
  const PesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Pesanan Saya",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            labelStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            labelColor: Colors.blue,
            overlayColor:
                MaterialStatePropertyAll(Colors.black.withOpacity(0.2)),
            tabs: [
              Tab(
                text: "Terjadwal",              
              ),
              Tab(text: "Aktif"),
              Tab(text: "Selesai"),
            ],
          ),
        ),
      ),
    );
  }
}
