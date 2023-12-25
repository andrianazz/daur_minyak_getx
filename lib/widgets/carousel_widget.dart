// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  int current;
  CarouselWidget({super.key, required this.items, required this.current});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 23.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 235.w,
                          height: 160.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(i['image']),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(60.h),
                      Text(
                        i['title'],
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        i['subtitle'],
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 350.h,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                widget.current = index;
              });
            },
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
        verticalSpace(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((entry) {
            return GestureDetector(
              child: Container(
                width: widget.current == entry.key ? 24.w : 10.w,
                height: 10.h,
                margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : primaryColor)
                      .withOpacity(widget.current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
