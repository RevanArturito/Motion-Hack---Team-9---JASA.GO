import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  void changeTab(int idx) {
    tabIndex = idx;
    update();
  }
}
