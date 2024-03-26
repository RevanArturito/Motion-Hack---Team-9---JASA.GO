import 'package:get/get.dart';

import '../controllers/spalsh_screen0_controller.dart';

class SpalshScreen0Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpalshScreen0Controller>(
      () => SpalshScreen0Controller(),
    );
  }
}
