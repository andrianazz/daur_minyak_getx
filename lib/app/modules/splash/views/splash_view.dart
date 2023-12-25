import 'package:daur_minyak_getx/app/data/models/splash_model.dart';
import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:daur_minyak_getx/widgets/button_widget.dart';
import 'package:daur_minyak_getx/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    const int current = 0;
    final items = splashPageModel;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 50.w,
                height: 50.h,
                margin: EdgeInsets.symmetric(horizontal: 23.w),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/daur_minyak_logo.png"),
                  ),
                ),
              ),
            ),
            verticalSpace(30.h),
            CarouselWidget(items: items, current: current),
            verticalSpace(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                    text: "Masuk",
                    onPressed: () {
                      // ref.read(routerProvider).pushNamed("login");
                    }),
                horizontalSpace(20.w),
                ButtonWidget(
                    text: "Daftar",
                    onPressed: () {
                      Get.toNamed(Routes.REGISTER);
                    }),
              ],
            ),
            verticalSpace(20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Row(
                children: [
                  const Text(
                    "Butuh bantuan? Hubungi",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Support Daur Minyak",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(26.h),
          ],
        ),
      ),
    );
  }
}
