import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
