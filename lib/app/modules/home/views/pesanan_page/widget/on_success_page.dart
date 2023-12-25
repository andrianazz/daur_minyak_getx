import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnSuccessPage extends StatelessWidget {
  const OnSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(40.h),
        SizedBox(
          height: 170.h,
          child: Image.asset(
            "assets/icon_purchase_order.png",
            fit: BoxFit.cover,
          ),
        ),
        Text(
          "Belum ada pesanan daurminyak yang selesai",
          style: TextStyle(fontSize: 14.sp, color: Colors.grey),
        ),
      ],
    );
  }
}
