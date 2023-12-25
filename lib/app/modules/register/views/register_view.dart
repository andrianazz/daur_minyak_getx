import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:daur_minyak_getx/widgets/button_full_widget.dart';
import 'package:daur_minyak_getx/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Akun',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Lengkapi data dirimu di bawah ini",
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23.w),
            child: Column(
              children: [
                verticalSpace(40.h),
                Stack(
                  children: [
                    Image.asset(
                      "assets/user_pic.png",
                      width: 100.w,
                      height: 100.h,
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add_circle_outline_sharp,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(35.h),
                TextFieldWidget(
                    text: "Nama Lengkap", controller: controller.nameC),
                verticalSpace(5.h),
                TextFieldWidget(text: "Email", controller: controller.emailC),
                verticalSpace(5.h),
                TextFieldWidget(
                  text: "Password",
                  controller: controller.passC,
                  obscureText: true,
                ),
                verticalSpace(5.h),
                TextFieldWidget(
                  text: "Password Konfirmasi",
                  controller: controller.passConfirmC,
                  obscureText: true,
                ),
                verticalSpace(5.h),
                TextFieldWidget(text: "No Hp", controller: controller.hpC),
                verticalSpace(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: controller.isChecked.value,
                          onChanged: (value) =>
                              controller.isChecked.value = value!,
                        ),
                      ),
                    ),
                    horizontalSpace(5.w),
                    RichText(
                      text: TextSpan(
                          text:
                              "Dengan masuk atau mendaftar, kamu menyetujui \n",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Syarat Ketentuan ",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                              text: "dan ",
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                            TextSpan(
                              onEnter: (event) => debugPrint("test"),
                              text: "Kebijakan Privasi ",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.blue,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                verticalSpace(40.h),
                Obx(
                  () => ButtonFullWidget(
                    text: controller.isLoading.isFalse ? "Daftar" : "Loading",
                    onPressed: controller.isLoading.isFalse
                        ? () {
                            controller.register(
                              email: controller.emailC.text,
                              password: controller.passC.text,
                              passwordConfirmation:
                                  controller.passConfirmC.text,
                              name: controller.nameC.text,
                              phoneNumber: controller.hpC.text,
                              isChecked: controller.isChecked.value,
                            );
                          }
                        : () {
                            Get.snackbar(
                              "Peringatan",
                              "Sedang diproses",
                              backgroundColor: orangeColor,
                            );
                          },
                  ),
                ),
                verticalSpace(40.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
