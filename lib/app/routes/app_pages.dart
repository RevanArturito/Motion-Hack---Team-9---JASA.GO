import 'package:get/get.dart';

import 'package:jasa_go/app/modules/edit_akun/bindings/edit_akun_binding.dart';
import 'package:jasa_go/app/modules/edit_akun/views/edit_akun_view.dart';
import 'package:jasa_go/app/modules/kategori/bindings/kategori_binding.dart';
import 'package:jasa_go/app/modules/kategori/views/kategori_view.dart';
import 'package:jasa_go/app/modules/ketentuan_privasi/bindings/ketentuan_privasi_binding.dart';
import 'package:jasa_go/app/modules/ketentuan_privasi/views/ketentuan_privasi_view.dart';
import 'package:jasa_go/app/modules/notifikasi/bindings/notifikasi_binding.dart';
import 'package:jasa_go/app/modules/notifikasi/views/notifikasi_view.dart';
import 'package:jasa_go/app/modules/pembayaran/bindings/pembayaran_binding.dart';
import 'package:jasa_go/app/modules/pembayaran/views/pembayaran_view.dart';
import 'package:jasa_go/app/modules/pembayaran2/bindings/pembayaran2_binding.dart';
import 'package:jasa_go/app/modules/pembayaran2/views/pembayaran2_view.dart';
import 'package:jasa_go/app/modules/pencarian/bindings/pencarian_binding.dart';
import 'package:jasa_go/app/modules/pencarian/views/pencarian_view.dart';
import 'package:jasa_go/app/modules/pesan_tukang/bindings/pesan_tukang_binding.dart';
import 'package:jasa_go/app/modules/pesan_tukang/views/pesan_tukang_view.dart';
import 'package:jasa_go/app/modules/profile_page/bindings/profile_page_binding.dart';
import 'package:jasa_go/app/modules/profile_page/views/profile_page_view.dart';
import 'package:jasa_go/app/modules/register/bindings/register_binding.dart';
import 'package:jasa_go/app/modules/register/views/register_view.dart';
import 'package:jasa_go/app/modules/ubah_sandi/bindings/ubah_sandi_binding.dart';
import 'package:jasa_go/app/modules/ubah_sandi/views/ubah_sandi_view.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/splach_screen_2/bindings/splach_screen_2_binding.dart';
import '../modules/splach_screen_2/views/splach_screen_2_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLACH_SCREEN_2,
      page: () => const SplachScreen2View(),
      binding: SplachScreen2Binding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_AKUN,
      page: () => EditAkunView(),
      binding: EditAkunBinding(),
    ),
    GetPage(
      name: _Paths.KETENTUAN_PRIVASI,
      page: () => KetentuanPrivasiView(),
      binding: KetentuanPrivasiBinding(),
    ),
    GetPage(
      name: _Paths.UBAH_SANDI,
      page: () => UbahSandiView(),
      binding: UbahSandiBinding(),
    ),
    GetPage(
      name: _Paths.PENCARIAN,
      page: () => PencarianView(),
      binding: PencarianBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => NotifikasiView(),
      binding: NotifikasiBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN,
      page: () => PembayaranView(),
      binding: PembayaranBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN2,
      page: () => Pembayaran2View(),
      binding: Pembayaran2Binding(),
    ),
    GetPage(
      name: _Paths.KATEGORI,
      page: () => KategoriView(),
      binding: KategoriBinding(),
    ),
    GetPage(
      name: _Paths.PESAN_TUKANG,
      page: () => PesanTukangView(),
      binding: PesanTukangBinding(),
    ),
  ];
}
