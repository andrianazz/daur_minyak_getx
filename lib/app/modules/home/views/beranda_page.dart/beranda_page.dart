import 'package:daur_minyak_getx/app/data/models/info_paket_model.dart';
import 'package:daur_minyak_getx/app/data/models/tutorial_model.dart';
import 'package:daur_minyak_getx/app/modules/home/controllers/home_controller.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:daur_minyak_getx/widgets/carousel_small_widget.dart';
import 'package:daur_minyak_getx/widgets/tutroial_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BerandaPage extends GetView<HomeController> {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemsInfo = infoPaketModel;
    const int currentCarousel = 0;
    final itemsTutorial = tutorialModel;

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Stack(
          children: [
            Container(
              height: 172.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bg_home.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, top: 40.h, right: 24.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              //TODO: LOGOUT
                            },
                            child: Container(
                              width: 30.w,
                              height: 30.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/user_picture.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          horizontalSpace(5.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Nomor HP",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 24.sp,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(70.h),
                  Container(
                    width: 185.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10.r,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.w,
                            height: 20.h,
                            child: Image.asset(
                              "assets/icon_coin.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          horizontalSpace(5.w),
                          const Text("Rp. 0"),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        verticalSpace(40.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Info dan Paket Spesial",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: orangeColor, width: 2.w),
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    child: Text(
                      "LIHAT SEMUA",
                      style: TextStyle(fontSize: 8.sp, color: orangeColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        verticalSpace(10.h),
        CarouselSmallWidget(items: itemsInfo, current: currentCarousel),
        verticalSpace(20.h),
        TutorialListWidget(items: itemsTutorial),
      ],
    );
  }
}
