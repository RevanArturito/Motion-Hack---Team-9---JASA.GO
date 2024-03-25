import 'package:get/get.dart';

import '../controllers/edit_akun_controller.dart';

class EditAkunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditAkunController>(
      () => EditAkunController(),
    );
  }
}
