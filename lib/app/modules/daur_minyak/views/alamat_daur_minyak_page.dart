import 'package:daur_minyak_getx/app/modules/daur_minyak/controllers/daur_minyak_controller.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/views/waktu_daur_minyak_page.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:daur_minyak_getx/widgets/appbar_daur_minyak.dart';
import 'package:daur_minyak_getx/widgets/button_full_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlamatDaurMinyakPage extends GetView<DaurMinyakController> {
  const AlamatDaurMinyakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarDaurMinyak(title: "Alamat Penjemputan"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pilih Alamat Pengambilan",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Tambah Alamat",
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(12.h),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_outlined),
                  hintText: "Cari Alamat",
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintStyle: TextStyle(fontSize: 10.sp),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              verticalSpace(15.h),
              Column(
                children: controller.itemsAlamat
                    .map(
                      (e) => Card(
                        color: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.selectedValue.value = e.isSelected;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: e.isSelected == true
                                      ? primaryColor
                                      : greyColor,
                                  width: 1.w,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            value: e.isSelected,
                                            groupValue:
                                                controller.selectedValue.value,
                                            onChanged: (value) {
                                              controller.selectedValue.value =
                                                  value as int;
                                            },
                                          ),
                                          Text(
                                            e.tipe,
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 20.w),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.pin_drop_outlined,
                                              size: 10.sp,
                                              color: primaryColor,
                                            ),
                                            Text(
                                              "Sudah pinpoint",
                                              style: TextStyle(fontSize: 6.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Muhammad Rakha",
                                          style: TextStyle(
                                            fontSize: 8.sp,
                                            color: greyColor,
                                          ),
                                        ),
                                        verticalSpace(4.h),
                                        SizedBox(
                                          width: 200.w,
                                          child: Text(
                                            e.jalan,
                                            style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w500,
                                              color: greyColor,
                                            ),
                                          ),
                                        ),
                                        verticalSpace(4.h),
                                        Text(
                                          "${e.kecamatan}, ${e.kota}, \n${e.provinsi} ${e.kodePos}",
                                          style: TextStyle(
                                            fontSize: 8.sp,
                                            color: greyColor,
                                          ),
                                        ),
                                        verticalSpace(4.h),
                                        Text(
                                          e.noHp,
                                          style: TextStyle(
                                            fontSize: 8.sp,
                                            color: greyColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  verticalSpace(4.h),
                                  Container(
                                    height: 30.h,
                                    width: 80.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    padding: EdgeInsets.zero,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            size: 10.sp,
                                          ),
                                          horizontalSpace(5.w),
                                          Text(
                                            "Edit",
                                            style: TextStyle(fontSize: 8.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  verticalSpace(10.h),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              verticalSpace(40.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonFullWidget(
                    text: "Lanjut",
                    onPressed: () {
                      Get.to(() => const WaktuDaurMinyakPage());
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
