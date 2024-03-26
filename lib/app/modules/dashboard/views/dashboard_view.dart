import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/home/views/home_view.dart';
import 'package:jasa_go/app/modules/pesanan/views/pesanan_view.dart';
import 'package:jasa_go/app/modules/profile_page/views/profile_page_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardController dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              berandapage(),
              PesananView(),
              ProfilePageView(),
            ],
          )),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            controller.changeTab(index);
          },
          currentIndex: controller.tabIndex,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                "assets/image/Button_Beranda.png",
                height: 50,
              ),
              activeIcon: Image.asset(
                "assets/image/Button_Beranda.png",
                height: 50,
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                "assets/image/Button_Pesanan.png",
                height: 50,
              ),
              activeIcon: Image.asset(
                "assets/image/Button_Pesanan.png",
                height: 50,
                color: Colors.blue,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                "assets/image/Button_Profil.png",
                height: 50,
              ),
              activeIcon: Image.asset(
                "assets/image/Button_Profil.png",
                height: 50,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
