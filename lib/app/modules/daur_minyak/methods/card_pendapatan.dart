import 'package:daur_minyak_getx/app/extensions/integer_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cardPendapatan() => Card(
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
    );

Row textPendapatan(String title, int value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            "assets/icon_coin.png",
            width: 16.sp,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 8.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      Text(
        value.toCurrencyString,
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
