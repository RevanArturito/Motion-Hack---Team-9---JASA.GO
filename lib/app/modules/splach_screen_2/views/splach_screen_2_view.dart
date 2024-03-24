import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splach_screen_2_controller.dart';

class SplachScreen2View extends GetView<SplachScreen2Controller> {
  const SplachScreen2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplachScreen2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SplachScreen2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
