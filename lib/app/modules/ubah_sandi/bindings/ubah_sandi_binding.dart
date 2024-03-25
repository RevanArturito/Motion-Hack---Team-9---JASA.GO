import 'package:get/get.dart';

import '../controllers/ubah_sandi_controller.dart';

class UbahSandiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbahSandiController>(
      () => UbahSandiController(),
    );
  }
}
