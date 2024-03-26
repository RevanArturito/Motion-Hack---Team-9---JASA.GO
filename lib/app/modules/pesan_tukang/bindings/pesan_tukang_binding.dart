import 'package:get/get.dart';

import '../controllers/pesan_tukang_controller.dart';

class PesanTukangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PesanTukangController>(
      () => PesanTukangController(),
    );
  }
}
