import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/dashboard/views/dashboard_view.dart';
import 'package:jasa_go/app/modules/login/views/login_view.dart';
import 'package:jasa_go/app/modules/profile_page/views/profile_page_view.dart';


class EditAkunWidget extends StatelessWidget {
  //const EditAkunWidget({super.key});
  var isButtonActive = true.obs;
  var isButtonNamaActive = true.obs;
  var isButtonEmailActive = true.obs;
  var isButtonNoHpActive = true.obs;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        final TextEditingController _namaEditingController = TextEditingController(text: snapshot.data!.docs.first['nama_lengkap']);
        final TextEditingController _noHpEditingController = TextEditingController(text: snapshot.data!.docs.first['no_hp']);
        final TextEditingController _emailEditingController = TextEditingController(text: snapshot.data!.docs.first['email']);

        void isChangeNama(String cekNama) {
          if (snapshot.data!.docs.first['nama_lengkap'] != cekNama) {
             isButtonNamaActive(true);
          } else {
            isButtonNamaActive(false);
          }
        }

         void isChangeNoHp(String cekNoHp) {
          if (snapshot.data!.docs.first['no_hp'] != cekNoHp) {
            isButtonNoHpActive(true);
          } else {
            isButtonActive(false);
          }
        }

        void isChangeEmail(String cekEmail) {
          if (snapshot.data!.docs.first['email'] != cekEmail) {
            isButtonEmailActive(true);
          } else {
            isButtonEmailActive(true);
          }
        }
        void isChange() {
          if (isButtonEmailActive.value || isButtonNamaActive.value || isButtonNoHpActive.value) {
            isButtonActive(true);
          } else {
            isButtonActive(false);
          }
        }
        return Column(
          children: [
            SizedBox(height: 36),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      isChangeNama(_namaEditingController.text);
                    },
                    controller: _namaEditingController,
                    decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/image/pencil-line.png'),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/image/user-01.png',scale: 1),
                            SizedBox(width: 10),
                            Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                          ],
                        ),
                      ),
                      filled: true,
                      hintText: 'Nama Lengkap',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:  BorderSide(color: Color(0xFF0066FF))
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFB1B1B1)),
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Row(              
              children: [
                Expanded(
                  child: TextField(
                     onChanged: (value) {
                      isChangeNoHp(_noHpEditingController.text);
                    },
                    controller: _noHpEditingController,
                    decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/image/pencil-line.png'),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/image/phone-logo.png',scale: 2, color: Colors.black),
                            SizedBox(width: 10),
                            Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                          ],
                        ),
                      ),
                      filled: true,
                      hintText: 'Nomor Telepon',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:  BorderSide(color: Color(0xFF0066FF))
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFB1B1B1)),
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                     onChanged: (value) {
                      isChangeEmail(_emailEditingController.text);
                    },
                    controller: _emailEditingController,
                    decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/image/pencil-line.png'),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/image/mail-01.png'),
                            SizedBox(width: 10),
                            Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                          ],
                        ),
                      ),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:  BorderSide(color: Color(0xFF0066FF))
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFB1B1B1)),
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  ),
                )
              ],
            ),
             SizedBox(height: 40),
             Obx(() =>  GestureDetector(
                onTap: () {
                  Get.to(() => DashboardView());
                },
                child : Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 355,
                  decoration: BoxDecoration(
                    gradient: isButtonActive.value 
                    ?
                    LinearGradient(
                      colors: [Color(0xFF0066FF),Color(0xFF23A9F8)]           
                    )
                    : 
                     LinearGradient(
                      colors: [Colors.grey,Colors.grey],
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text("Simpan",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color : Colors.white
                    ),
                  ),
                    )
                  )
                ),
              SizedBox(height: 146),
              GestureDetector(
                onTap: () {
                  Get.to(() => LoginView());
                },
                child : Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 355,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/image/log-out-02.png',scale: 1.2),
                      SizedBox(width: 7),
                      Text("Logout",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color : Colors.red
                      ),
                      ),
                    ],
                  ),
                    )
                  )
          ],
        );
        }
      )
    );
  }
}