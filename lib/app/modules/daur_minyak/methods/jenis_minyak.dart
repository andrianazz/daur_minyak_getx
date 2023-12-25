import 'package:daur_minyak_getx/app/modules/daur_minyak/models/daur_minyak_model.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget jenisMinyak({
  required List<DaurMinyakModel> items,
  bool isSelected = false,
  required Function onTap,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: items
        .map(
          (e) => Container(
            margin: EdgeInsets.only(
                right: items.length - 1 == items.lastIndexOf(e) ? 0 : 24.w),
            child: GestureDetector(
              onTap: () => onTap,
              child: cardJenisMinyak(
                title: e.title,
                imagePath: e.image,
                isSelected: e.isSelected,
                onTap: () => onTap,
              ),
            ),
          ),
        )
        .toList(),
  );
}

Widget cardJenisMinyak({
  required String title,
  required String imagePath,
  bool isSelected = false,
  required Function onTap,
}) {
  return GestureDetector(
    onTap: () => onTap,
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
              color: const Color.fromRGBO(255, 255, 255, 1),
              border: Border.all(
                color: isSelected == true ? Colors.green : Colors.transparent,
                width: 2,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  width: 40.w,
                  height: 40.h,
                ),
                verticalSpace(7.h),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        isSelected == true
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
  );
}
