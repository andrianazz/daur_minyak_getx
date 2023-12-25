import 'package:daur_minyak_getx/app/modules/home/views/pesanan_page/widget/card_pesanan.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:daur_minyak_getx/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnProgressPage extends StatelessWidget {
  const OnProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) => Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 30.w),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Container(
                            width: 20,
                            height: 2,
                            color: Colors.grey[200],
                          ),
                          verticalSpace(2.h),
                          Container(
                            width: 20,
                            height: 2,
                            color: Colors.grey[200],
                          ),
                          verticalSpace(20.h),
                          CircleAvatar(
                            radius: 30.r,
                            backgroundColor: primaryColor.withOpacity(0.4),
                            child: Image.asset(
                              "assets/icon-timbangan.png",
                              width: 30.w,
                            ),
                          ),
                          verticalSpace(10.h),
                          Text(
                            'Apakah kamu sudah setuju dengan hasil\nPenimbangan ?',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20.h),
                    const RowDetailPesanan(
                      title: "Minyak Makan Bekas",
                      value: "2 L",
                    ),
                    const RowDetailPesanan(
                      title: "Oli Bekas",
                      value: "1 L",
                    ),
                    verticalSpace(20.h),
                    const Divider(),
                    const RowDetailPesanan(
                      title: "Total Harga",
                      value: "40.000",
                      image: "assets/icon_coin.png",
                    ),
                    const RowDetailPesanan(
                      title: "Biaya Admin 20%",
                      value: "8.000",
                      image: "assets/icon_coin.png",
                    ),
                    const Divider(),
                    const RowDetailPesanan(
                      title: "Total Pendapatan",
                      value: "32.000",
                      image: "assets/icon_coin.png",
                    ),
                    const Divider(),
                    RowDetailPesananButton(
                      onPressed: () {},
                      title: "Metode Penjualan",
                      value: "Daurminyak Coin",
                      image: "assets/icon_coin.png",
                    ),
                    verticalSpace(20.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        minimumSize: Size(double.infinity, 30.h),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Setuju",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const CardPesanan(
            subtitle: "Duitin Picker Menuju Lokasimu",
            name: "Andrian Wahyu",
            orderNumber: "PKU290800",
            time: "12:30 - 14:30",
            image: "assets/icon-picker.png",
          ),
        ),
      ],
    );
  }
}

class RowDetailPesanan extends StatelessWidget {
  final String title;
  final String value;
  final String? image;

  const RowDetailPesanan({
    super.key,
    required this.title,
    required this.value,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            image != null
                ? Image.asset(
                    image!,
                    width: 20.w,
                  )
                : const SizedBox(),
            Text(
              title,
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 10.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class RowDetailPesananButton extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  final Function() onPressed;

  const RowDetailPesananButton({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: primaryColor.withOpacity(0.4),
            ),
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: 20.w,
                ),
                horizontalSpace(5.w),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                horizontalSpace(5.w),
              ],
            ),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 10.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
