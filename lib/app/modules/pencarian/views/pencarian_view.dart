import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pencarian_controller.dart';

class PencarianView extends GetView<PencarianController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PencarianView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PencarianView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
