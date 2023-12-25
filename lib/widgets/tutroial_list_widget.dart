import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TutorialListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const TutorialListWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100.w,
            height: 120.h,
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 5.h,
            ),
            margin: EdgeInsets.only(
              left: index == 0 ? 24.w : 0,
              right: index == items.length - 1 ? 24.w : 0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalSpace(5.h),
                Text(
                  items[index]['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                  child: Image.asset(
                    "assets/icon_duitin.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return horizontalSpace(6.w);
        },
      ),
    );
  }
}
