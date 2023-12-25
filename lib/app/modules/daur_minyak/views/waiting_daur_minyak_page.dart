import 'package:daur_minyak_getx/app/modules/daur_minyak/controllers/daur_minyak_controller.dart';
import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WaitingDaurMinyakPage extends GetView<DaurMinyakController> {
  const WaitingDaurMinyakPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.initWaiting();

    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: greyColor,
            ),
            controller.isFind.value == false
                ? const MenungguWidget()
                : const FindingPicker(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: controller.isFind.isTrue,
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              //  TODO: GO TO MAIN
                              Get.offAllNamed(Routes.HOME);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              minimumSize: Size(double.infinity, 40.h),
                            ),
                            child: const Text(
                              "Setuju Pesanan",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        minimumSize: Size(double.infinity, 40.h),
                      ),
                      child: const Text(
                        "Batalkan Pesanan",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FindingPicker extends StatelessWidget {
  const FindingPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: greyColor,
                        child: Image.asset(
                          "assets/people_icon2.png",
                          width: 25.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kami sedang mencarikan Daurminyak Picker untukmu",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sisa waktu pencarian Daurminyak Picker : 5 detik",
                            style: TextStyle(
                              fontSize: 6.sp,
                              color: primaryColor,
                            ),
                          ),
                          Text(
                            "Apabila waktu pesanan habis, maka pesanan akan \ndibatalkan secara otomatis",
                            style: TextStyle(
                              fontSize: 6.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h),
              const Divider(),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: orangeColor,
                        child: Image.asset(
                          "assets/icons-scooter3.png",
                          width: 25.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daurminyak Picker menuju ke lokasimu",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Daurminyak Picker terdekat dilokasimu telah ditemukan dan segera \nmenuju ke lokasimu",
                            style: TextStyle(
                              fontSize: 6.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: greyColor),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Andrian Wahyu",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: primaryColor,
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 15.sp,
                              ),
                            ),
                            SizedBox(width: 15.w),
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: primaryColor,
                              child: Icon(
                                Icons.message,
                                color: Colors.white,
                                size: 15.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5.h),
                    const Divider(),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "No. Order: PKU290800",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "BM6809LE",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: primaryColor,
                            image: const DecorationImage(
                              image: AssetImage("assets/icon-picker.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: greyColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: primaryColor,
                          ),
                          child: Image.asset("assets/icons-scooter2.png"),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Detail Penjemputan",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: primaryColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.timer,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Waktu Pengambilan",
                              style: TextStyle(
                                fontSize: 6.sp,
                              ),
                            ),
                            Text(
                              "20:00 - 21:00",
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: primaryColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.pin_drop,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Alamat Pengambilan",
                              style: TextStyle(
                                fontSize: 6.sp,
                              ),
                            ),
                            Text(
                              "Jl. Manunggal Perumahan Cahaya Mata Bumi",
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}

class MenungguWidget extends GetView<DaurMinyakController> {
  const MenungguWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: primaryColor,
                        child: Image.asset(
                          "assets/people_icon.png",
                          width: 25.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kami sedang mencarikan Daurminyak Picker untukmu",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sisa waktu pencarian Daurminyak Picker : 5 detik",
                            style: TextStyle(
                              fontSize: 6.sp,
                              color: primaryColor,
                            ),
                          ),
                          Text(
                            "Apabila waktu pesanan habis, maka pesanan akan \ndibatalkan secara otomatis",
                            style: TextStyle(
                              fontSize: 6.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h),
              const Divider(),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: greyColor,
                        child: Image.asset(
                          "assets/icons-scooter.png",
                          width: 25.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daurminyak Picker menuju ke lokasimu",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Daurminyak Picker terdekat dilokasimu telah ditemukan dan segera \nmenuju ke lokasimu",
                            style: TextStyle(
                              fontSize: 6.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: greyColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: primaryColor,
                          ),
                          child: Image.asset("assets/icons-scooter2.png"),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Detail Penjemputan",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: primaryColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.timer,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Waktu Pengambilan",
                              style: TextStyle(
                                fontSize: 6.sp,
                              ),
                            ),
                            Text(
                              "20:00 - 21:00",
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: primaryColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.pin_drop,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Alamat Pengambilan",
                              style: TextStyle(
                                fontSize: 6.sp,
                              ),
                            ),
                            Text(
                              "Jl. Manunggal Perumahan Cahaya Mata Bumi",
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: greyColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Pesanan",
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Minyak Goreng",
                          style: TextStyle(
                            fontSize: 8.sp,
                          ),
                        ),
                        Text(
                          "1 L",
                          style: TextStyle(
                            fontSize: 8.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Oli Bekas",
                          style: TextStyle(
                            fontSize: 8.sp,
                          ),
                        ),
                        Text(
                          "1 L",
                          style: TextStyle(
                            fontSize: 8.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    const Divider(),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icon_coin.png"),
                            SizedBox(width: 5.w),
                            Text(
                              "Total Harga",
                              style: TextStyle(
                                fontSize: 8.sp,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "20.000",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icon_coin.png"),
                            SizedBox(width: 5.w),
                            Text(
                              "Biaya admin 20%",
                              style: TextStyle(
                                fontSize: 8.sp,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "8.000",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icon_coin.png"),
                            SizedBox(width: 5.w),
                            Text(
                              "Estimasi Pendapatan",
                              style: TextStyle(
                                fontSize: 8.sp,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "32.000",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
