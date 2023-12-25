// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import 'package:daur_minyak_getx/app/modules/home/bindings/home_binding.dart';
import 'package:daur_minyak_getx/app/modules/home/views/home_view.dart';
import 'package:daur_minyak_getx/app/modules/register/bindings/register_binding.dart';
import 'package:daur_minyak_getx/app/modules/register/views/register_view.dart';
import 'package:daur_minyak_getx/app/modules/splash/bindings/splash_binding.dart';
import 'package:daur_minyak_getx/app/modules/splash/views/splash_view.dart';

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
  ];
}
