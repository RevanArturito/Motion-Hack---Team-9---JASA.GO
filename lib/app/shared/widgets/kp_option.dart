// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KpOption extends StatelessWidget {
  const KpOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: GestureDetector(
            onTap: () {
              
            },
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Text('Syarat & Ketentuan', 
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
              
            },
            child: Column(
              children: [
                Row(
                  children: [
                   
                    Text('Kebijakan Privasi', 
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
              
            },
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Text('Kebijakan Pemesanan', 
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
      ],
    );
  }
}