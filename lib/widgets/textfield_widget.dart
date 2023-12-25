import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final bool obscureText;
  final TextEditingController controller;

  const TextFieldWidget({
    super.key,
    required this.text,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: "Masukkan $text anda",
            hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
