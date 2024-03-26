// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:jasa_go/app/shared/widgets/profile_option.dart';

import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  //ProfilePageController profilePageController= Get.put(ProfilePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 70, 
        title: 
          Align(
            child: Text("Akun Saya ",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  color : Colors.black,
                  fontWeight : FontWeight.bold
                ),
            ),
          ),
      ),     
      body : 
      SingleChildScrollView(
        child: StreamBuilder(
          stream:
            FirebaseFirestore.instance.collection('User').snapshots(),
            builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Mohon tunggu...");
            }
        
            if (!snapshot.hasData) {
              return Text("Tidak ada data...");
            }
                  
            return Column(
              children: [
                SizedBox(height: 14),
                Row(
                  children: [                 
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    //backgroundImage: AssetImage('assets/images/Pp.png'),
                                    radius: 40,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration (
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [Color(0xFF0066FF),Color(0xFF23A9F8)],
                                        ),
                                      ),
                                      child: Image.asset('assets/image/avatar.png'),
                                    ),
                                  ),
                                  SizedBox(width: 24),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data!.docs.first['nama_lengkap'], 
                                        style: GoogleFonts.montserrat(
                                          fontSize : 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(snapshot.data!.docs.first['email'], 
                                        style: GoogleFonts.montserrat(
                                          fontSize : 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      // GestureDetector(
                                      //   onTap: () {
                                      //     Get.to(() => EditAkunView());
                                      //   },
                                      //   child: Row(
                                      //     children:[ 
                                      //       Image.asset('assets/image/pencil-line.png',scale: 1.3),
                                      //       SizedBox(width: 8),
                                      //       Text("Edit Akun", 
                                      //         style: GoogleFonts.montserrat(
                                      //           fontSize:14,
                                      //           fontWeight: FontWeight.w500,
                                      //           color : Color(0xFF0066FF)
                                                
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   )
                                      // )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 36),
                ProfileOption()
             ],
            );          
         }),
      ),
      );
  }
}
