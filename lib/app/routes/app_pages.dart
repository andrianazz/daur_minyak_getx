import 'package:get/get.dart';

import 'package:daur_minyak_getx/app/modules/daur_minyak/bindings/daur_minyak_binding.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/views/daur_minyak_view.dart';
import 'package:daur_minyak_getx/app/modules/home/bindings/home_binding.dart';
import 'package:daur_minyak_getx/app/modules/home/views/home_view.dart';
import 'package:daur_minyak_getx/app/modules/login/bindings/login_binding.dart';
import 'package:daur_minyak_getx/app/modules/login/views/login_view.dart';
import 'package:daur_minyak_getx/app/modules/register/bindings/register_binding.dart';
import 'package:daur_minyak_getx/app/modules/register/views/register_view.dart';
import 'package:daur_minyak_getx/app/modules/splash/bindings/splash_binding.dart';
import 'package:daur_minyak_getx/app/modules/splash/views/splash_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DAUR_MINYAK,
      page: () => const DaurMinyakView(),
      binding: DaurMinyakBinding(),
    ),
  ];
}
