import 'package:daur_minyak_getx/app/modules/daur_minyak/models/daur_minyak_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Column jenisMinyakQty({required List<DaurMinyakModel> items}) {
  return Column(
    children: items
        .map(
          (e) => cardJenisMinyakQty(
            title: e.title,
            imagePath: e.image,
          ),
        )
        .toList(),
  );
}

Stack cardJenisMinyakQty({required String title, required String imagePath}) {
  return Stack(
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
              borderRadius: BorderRadius.circular(5.r),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      imagePath,
                      width: 20.sp,
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
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_circle_outlined,
                        color: Colors.red,
                        size: 20.sp,
                      ),
                    ),
                    Text(
                      "0 L",
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
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
          onPressed: () {},
          icon: Icon(
            Icons.remove_circle_outlined,
            color: Colors.red,
            size: 20.sp,
          ),
        ),
      ),
    ],
  );
}
