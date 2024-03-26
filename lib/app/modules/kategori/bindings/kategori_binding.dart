import 'package:get/get.dart';

import '../controllers/kategori_controller.dart';

class KategoriBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KategoriController>(
      () => KategoriController(),
    );
  }
}
