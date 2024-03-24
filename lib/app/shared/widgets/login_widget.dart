// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginWidget extends StatelessWidget {
  const loginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45),
        Text("Masuk",
            style: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0066FF)
            ),
          ),
        SizedBox(height: 60),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.mail_outline_rounded),
                        SizedBox(width: 10),
                        Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                      ],
                    ),
                  ),
                  filled: true,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF0066FF)), 
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(color: Color(0xFF0066FF))
                  ),
              ),
              ),
            )
          ],
        ),
        SizedBox(height: 13),
          Row(
          children: [
            Expanded(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/image/passcode.png',scale: 2),
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
              ),
              ),
            )
          ],
        ),
      ],
    );
  }
}