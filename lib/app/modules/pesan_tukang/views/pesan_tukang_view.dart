import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pesan_tukang_controller.dart';

class PesanTukangView extends GetView<PesanTukangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PesanTukangView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PesanTukangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
