import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogWidget extends StatefulWidget {
  final String text;
  final String textButton1;
  final Function onPressedButton1;
  final String? textButton2;
  final Function? onPressedButton2;

  const DialogWidget(
      {super.key,
      required this.text,
      required this.textButton1,
      this.textButton2,
      required this.onPressedButton1,
      this.onPressedButton2});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
        widget.text,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      contentTextStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
      actionsPadding: EdgeInsets.symmetric(vertical: 0.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
      actions: [
        TextButton(
          onPressed: widget.onPressedButton1(),
          child: Text(
            widget.textButton1,
            style: TextStyle(
              color: primaryColor,
              fontSize: 10.sp,
            ),
          ),
        ),
        (widget.textButton2 != null && widget.onPressedButton2 != null)
            ? TextButton(
                onPressed: widget.onPressedButton2!(),
                child: Text(
                  widget.textButton2!,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
