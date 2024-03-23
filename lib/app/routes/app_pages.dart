import 'package:get/get.dart';

import 'package:jasa_go/app/modules/home/bindings/home_binding.dart';
import 'package:jasa_go/app/modules/home/views/home_view.dart';
import 'package:jasa_go/app/modules/profile/bindings/profile_binding.dart';
import 'package:jasa_go/app/modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PROFILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
