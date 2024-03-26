import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/dashboard/views/dashboard_view.dart';
import 'package:jasa_go/app/shared/widgets/pembayaran_widget.dart';

import '../controllers/pembayaran2_controller.dart';

class Pembayaran2View extends GetView<Pembayaran2Controller> {
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
                      child: Text("Pembayaran Berhasil",
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
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFF),
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
          "Pembayaran",
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 28),
              SizedBox(height: 29),
              PembayaranWidget2(),
              SizedBox(height: 71),
              Align(
                child: Container(
                  height: 65,
                  width: 359,
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
                    padding: EdgeInsets.symmetric(horizontal: 16 ),
                    child: 
                      Padding(
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            Text(
                              "Sisa Waktu Pembayaran",
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFC90C00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0.59.59",
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFC90C00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ) 
                      ),
                  ),
                ),
              ),
              SizedBox(height: 31),
              GestureDetector(
                onTap: () {
                  showDialog();
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
      )
    );
  }
}
