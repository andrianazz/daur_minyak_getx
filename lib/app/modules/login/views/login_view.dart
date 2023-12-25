import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:daur_minyak_getx/widgets/button_full_widget.dart';
import 'package:daur_minyak_getx/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masuk Akun',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Silahkan masuk dengan email terdaftar",
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed(Routes.SPLASH);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.w),
        child: Column(
          children: [
            verticalSpace(40.h),
            TextFieldWidget(text: "Email", controller: controller.emailC),
            verticalSpace(20.h),
            TextFieldWidget(
              text: "Password",
              controller: controller.passC,
              obscureText: true,
            ),
            verticalSpace(40.h),
            ButtonFullWidget(
                text: "Masuk",
                onPressed: () {
                  controller.login(
                    email: controller.emailC.text,
                    password: controller.passC.text,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
