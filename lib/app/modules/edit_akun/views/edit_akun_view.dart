
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/shared/widgets/edit_akun_widget.dart';

import '../controllers/edit_akun_controller.dart';

class EditAkunView extends GetView<EditAkunController> {
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
          "Edit Akun",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 24),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade200,
                    child: CircleAvatar(
                      radius: 50,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration (
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xFF0066FF),Color(0xFF23A9F8)],
                          ),
                        ),
                        child: Image.asset('assets/image/avatar.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset('assets/image/pencil-line.png'),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50,
                            ),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 4),
                              color: Colors.black.withOpacity(
                                0.3,
                              ),
                              blurRadius: 3,
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              // Align(
              //   child: CircleAvatar(
              //     radius: 50,
              //     child: Container(
              //       width: 100,
              //       height: 100,
              //       decoration: BoxDecoration (
              //         shape: BoxShape.circle,
              //         gradient: LinearGradient(
              //           colors: [Color(0xFF0066FF),Color(0xFF23A9F8)],
              //         ),
              //       ),
              //       child: Image.asset('assets/image/avatar.png'),
              //     ),
              //   ),
              // ),
              EditAkunWidget(),
            ],
          ),
        ),
      ),
      
    );
  }
}
