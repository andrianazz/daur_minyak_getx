// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSmallWidget extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  int current;
  CarouselSmallWidget({super.key, required this.items, required this.current});

  @override
  State<CarouselSmallWidget> createState() => _CarouselSmallWidgetState();
}

class _CarouselSmallWidgetState extends State<CarouselSmallWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.items.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Container(
                width: 300.w,
                height: 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: AssetImage(i['image']),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        enlargeCenterPage: true,
        height: 100.h,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        onPageChanged: (index, reason) {
          setState(() {
            widget.current = index;
          });
        },
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
