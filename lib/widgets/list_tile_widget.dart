import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  const ListTileWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        height: 30.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: primaryColor,
                  size: 20.sp,
                ),
                horizontalSpace(10.w),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
