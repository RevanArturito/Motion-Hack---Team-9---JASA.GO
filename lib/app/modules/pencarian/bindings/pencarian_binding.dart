import 'package:get/get.dart';

import '../controllers/pencarian_controller.dart';

class PencarianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PencarianController>(
      () => PencarianController(),
    );
  }
}
