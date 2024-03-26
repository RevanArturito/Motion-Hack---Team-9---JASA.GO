import 'package:get/get.dart';

import '../controllers/pembayaran2_controller.dart';

class Pembayaran2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pembayaran2Controller>(
      () => Pembayaran2Controller(),
    );
  }
}
