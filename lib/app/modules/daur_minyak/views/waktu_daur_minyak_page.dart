import 'package:daur_minyak_getx/app/modules/daur_minyak/controllers/daur_minyak_controller.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/models/daur_waktu_model.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/views/waiting_daur_minyak_page.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:daur_minyak_getx/widgets/appbar_daur_minyak.dart';
import 'package:daur_minyak_getx/widgets/button_full_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WaktuDaurMinyakPage extends GetView<DaurMinyakController> {
  const WaktuDaurMinyakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarDaurMinyak(title: "Waktu penjemputan"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(40.h),
              Text(
                "Pilih Waktu Pengambilan",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
              verticalSpace(8.h),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: primaryColor,
                              size: 20.sp,
                            ),
                            horizontalSpace(8.w),
                            Expanded(
                              child: Text(
                                "Sesuaikan waktumu",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: controller.waktus.map((e) {
                            return Column(
                              children: [
                                Obx(
                                  () => GestureDetector(
                                    onTap: () {
                                      controller.groupValue.value = e.id;
                                    },
                                    child: Row(
                                      children: [
                                        Transform.scale(
                                          scale: 0.7,
                                          child: Radio(
                                            value: e.id,
                                            groupValue:
                                                controller.groupValue.value,
                                            onChanged: (value) {
                                              controller.groupValue.value =
                                                  value as int;
                                            },
                                          ),
                                        ),
                                        horizontalSpace(8.w),
                                        Text(
                                          e.title,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(),
                              ],
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace(40.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonFullWidget(
                    text: "Cari Duitin Picker",
                    onPressed: () {
                      Get.to(() => const WaitingDaurMinyakPage());
                    },
                  ),
                ],
              ),
              verticalSpace(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
