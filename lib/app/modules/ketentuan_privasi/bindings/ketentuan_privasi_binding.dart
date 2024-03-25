import 'package:get/get.dart';

import '../controllers/ketentuan_privasi_controller.dart';

class KetentuanPrivasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KetentuanPrivasiController>(
      () => KetentuanPrivasiController(),
    );
  }
}
