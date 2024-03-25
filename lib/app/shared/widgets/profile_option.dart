import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasa_go/app/modules/edit_akun/views/edit_akun_view.dart';
import 'package:jasa_go/app/modules/ketentuan_privasi/views/ketentuan_privasi_view.dart';
import 'package:jasa_go/app/modules/ubah_sandi/views/ubah_sandi_view.dart';

class ProfileOption extends StatelessWidget {
  const ProfileOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: GestureDetector(
            onTap: () {
              Get.to(() => EditAkunView());
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/image/passcode.png', scale: 2),
                    SizedBox(width: 24),
                    Text('Edit Akun', 
                      style: GoogleFonts.montserrat(
                        fontSize : 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right_outlined, size: 30),
                  ],
                ),
                SizedBox(height: 20),
                Divider(color: Color(0xFFD1DFF3))
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: GestureDetector(
            onTap: () {
              Get.to(() => UbahSandiView());
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/image/user-01.png', scale: 1),
                    SizedBox(width: 24),
                    Text('Ubah Kata Sandi', 
                      style: GoogleFonts.montserrat(
                        fontSize : 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right_outlined, size: 30),
                  ],
                ),
                SizedBox(height: 20),
                Divider(color: Color(0xFFD1DFF3))
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: GestureDetector(
            onTap: () {
              Get.to(() => KetentuanPrivasiView());
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/image/file-question-02.png', scale: 1),
                    SizedBox(width: 24),
                    Text('Ketentuan & privasi', 
                      style: GoogleFonts.montserrat(
                        fontSize : 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right_outlined, size: 30),
                  ],
                ),
                SizedBox(height: 20),
                Divider(color: Color(0xFFD1DFF3))
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: GestureDetector(
            onTap: () {print("test");},
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/image/bell-01.png', scale: 1),
                    SizedBox(width: 24),
                    Text('Notifikasi', 
                      style: GoogleFonts.montserrat(
                        fontSize : 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right_outlined, size: 30),
                  ],
                ),
                SizedBox(height: 20),
               
              ],
            ),
          ),
        )
      
      ],
    );
  }
}