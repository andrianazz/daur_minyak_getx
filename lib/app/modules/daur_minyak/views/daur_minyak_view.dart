import 'package:daur_minyak_getx/app/modules/daur_minyak/methods/card_pendapatan.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/methods/title_daur_minyak.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/views/alamat_daur_minyak_page.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:daur_minyak_getx/widgets/appbar_daur_minyak.dart';
import 'package:daur_minyak_getx/widgets/button_full_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/daur_minyak_controller.dart';

class DaurMinyakView extends GetView<DaurMinyakController> {
  const DaurMinyakView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFECEC),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarDaurMinyak(
          title: 'Pesan Pengambilan',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(40.h),
            titleDaurMinyak(title: "Jenis Minyak Bekas"),
            verticalSpace(38.h),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: controller.items
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.only(
                            right: controller.items.length - 1 ==
                                    controller.items.lastIndexOf(e)
                                ? 0
                                : 24.w),
                        child: GestureDetector(
                          onTap: () {
                            e.isSelected = !e.isSelected;
                            Get.forceAppUpdate();
                          },
                          child: Stack(
                            children: [
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 80.w,
                                  height: 80.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                      color: e.isSelected == true
                                          ? Colors.green
                                          : Colors.transparent,
                                      width: 2,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        e.image,
                                        width: 40.w,
                                        height: 40.h,
                                      ),
                                      verticalSpace(7.h),
                                      Text(
                                        e.title,
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              e.isSelected == true
                                  ? Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 20.sp,
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            verticalSpace(40.h),
            SizedBox(
              height: 80.h,
              child: Column(
                children: controller.items
                    .map(
                      (e) => e.isSelected
                          ? Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      padding: EdgeInsets.only(left: 15.w),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                e.image,
                                                width: 20.sp,
                                              ),
                                              Text(
                                                e.title,
                                                style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  if (e.qty <= 1) {
                                                    e.isSelected = false;
                                                    Get.forceAppUpdate();
                                                  } else {
                                                    e.qty--;
                                                    Get.forceAppUpdate();
                                                  }
                                                },
                                                icon: Icon(
                                                  Icons.remove_circle_outlined,
                                                  color: Colors.red,
                                                  size: 20.sp,
                                                ),
                                              ),
                                              Text(
                                                "${e.qty} L",
                                                style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  e.qty++;
                                                  Get.forceAppUpdate();
                                                },
                                                icon: Icon(
                                                  Icons.add_circle_outlined,
                                                  color: Colors.green,
                                                  size: 20.sp,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -10.w,
                                  child: IconButton(
                                    onPressed: () {
                                      e.isSelected = false;
                                      Get.forceAppUpdate();
                                    },
                                    icon: Icon(
                                      Icons.remove_circle_outlined,
                                      color: Colors.red,
                                      size: 20.sp,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                    )
                    .toList(),
              ),
            ),
            verticalSpace(25.h),
            titleDaurMinyak(title: "Pendapatan Kamu"),
            verticalSpace(10.h),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: 100.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textPendapatan("Total Harga", 0),
                    textPendapatan("Biaya Admin 20%", 0),
                    const Divider(
                      height: 1,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                    textPendapatan("Estimasi Pendapatan", 0),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonFullWidget(
                    text: "Lanjut",
                    onPressed: () {
                      Get.to(() => const AlamatDaurMinyakPage());
                    },
                  ),
                ],
              ),
            ),
            verticalSpace(40.h),
          ],
        ),
      ),
    );
  }
}
