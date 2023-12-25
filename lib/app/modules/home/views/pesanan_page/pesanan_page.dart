import 'package:daur_minyak_getx/app/modules/home/views/pesanan_page/widget/on_progress_page.dart';
import 'package:daur_minyak_getx/app/modules/home/views/pesanan_page/widget/on_success_page.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  final PageController _pageController = PageController();
  int _selectedPesanan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xcfff5f5f5),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.h,
              color: primaryColor,
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      "Pesanan",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 17.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 33.h,
              child: Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedPesanan = 0;
                          _pageController.jumpToPage(0);
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _selectedPesanan == 0
                                  ? primaryColor
                                  : Colors.transparent,
                              width: 1.w,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                            "Dalam Proses",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: _selectedPesanan == 0
                                    ? Colors.black
                                    : Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedPesanan = 1;
                          _pageController.jumpToPage(1);
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _selectedPesanan == 1
                                  ? primaryColor
                                  : Colors.transparent,
                              width: 1.w,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                            "Selesai",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: _selectedPesanan == 1
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _selectedPesanan = value;
                    _pageController.jumpToPage(value);
                  });
                },
                children: const [
                  OnProgressPage(),
                  OnSuccessPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
