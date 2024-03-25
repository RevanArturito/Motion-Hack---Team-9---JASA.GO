import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditAkunWidget extends StatelessWidget {
  //const EditAkunWidget({super.key});

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
        return Column(
          children: [
            SizedBox(height: 36),
            Row(
              children: [
                Expanded(
                  child: TextField(
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
          
          ],
        );
        }
      )
    );
  }
}