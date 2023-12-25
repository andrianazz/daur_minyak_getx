import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardPesanan extends StatelessWidget {
  final String? title;
  final String subtitle;
  final String name;
  final String orderNumber;
  final String? time;
  final String? image;

  const CardPesanan({
    super.key,
    this.title,
    required this.subtitle,
    required this.name,
    required this.orderNumber,
    this.time,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? Text(
                    title!,
                    style: TextStyle(
                      fontSize: 8.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : const SizedBox(),
            verticalSpace(10.h),
            Row(
              children: [
                Container(
                  width: 50.w,
                  height: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.asset(
                    image!,
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(20.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(5.h),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.black,
                      ),
                    ),
                    verticalSpace(5.h),
                    Text(
                      "No. Order: $orderNumber",
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            verticalSpace(10.h),
            time != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: greyColor,
                            size: 10.sp,
                          ),
                          horizontalSpace(5.w),
                          Text(
                            time!,
                            style: TextStyle(
                              fontSize: 8.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10.r,
                            backgroundColor: primaryColor,
                            child: Icon(
                              Icons.call,
                              color: Colors.white,
                              size: 12.sp,
                            ),
                          ),
                          horizontalSpace(10.w),
                          CircleAvatar(
                            radius: 10.r,
                            backgroundColor: primaryColor,
                            child: Icon(
                              Icons.message,
                              color: Colors.white,
                              size: 12.sp,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
