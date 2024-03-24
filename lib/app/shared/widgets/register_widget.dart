// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class registerWidget extends StatelessWidget {
  const registerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/person-logo.png',scale: 2, color: Colors.black,),
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
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/phone-logo.png',scale: 2, color: Colors.black,),
                          SizedBox(width: 10),
                          Image.asset('assets/image/Line.png', height: 27, color: Colors.black38)
                        ],
                      ),
                    ),
                    filled: true,
                    hintText: 'No.Telp',
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
          SizedBox(height: 10),
            Row(
            children: [
              Expanded(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/mail-logo.png',scale: 2, color: Colors.black,),
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
          SizedBox(height: 10),
            Row(
            children: [
              Expanded(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image/shield-logo.png',scale: 2, color: Colors.black,),
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
          SizedBox(height: 10),
      ],
    );
  }
}