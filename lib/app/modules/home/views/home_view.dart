import 'package:daur_minyak_getx/app/modules/home/views/akun_page/akun_page.dart';
import 'package:daur_minyak_getx/app/modules/home/views/beranda_page.dart/beranda_page.dart';
import 'package:daur_minyak_getx/app/modules/home/views/pesan_masuk_page/pesan_masuk_page.dart';
import 'package:daur_minyak_getx/app/modules/home/views/pesanan_page/pesanan_page.dart';
import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.selectedIndex.value = value;
          controller.pageController.jumpToPage(value);
        },
        children: const [
          BerandaPage(),
          PesananPage(),
          SizedBox(),
          PesanMasukPage(),
          AkunPage(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        onPressed: () {
          // bool notVerified =
          //     ref.read(userDataProvider).asData!.value!.verification == false;
          // if (notVerified) {
          //   showDialog(
          //     context: context,
          //     builder: (context) => DialogWidget(
          //       text:
          //           "Akun belum terverifikasi,\nsilahkan lengkapi data diri anda",
          //       textButton1: "Lengkapi Data Diri",
          //       onPressedButton1: () {},
          //     ),
          //   );
          // }

          // ref.read(routerProvider).pushNamed("daur_minyak");

          // TODO: DAURMINYAK
          Get.toNamed(Routes.DAUR_MINYAK);
        },
        child: Image.asset(
          "assets/icon_process.png",
          width: 30.w,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10.sp,
        unselectedFontSize: 10.sp,
        currentIndex: controller.selectedIndex.value,
        onTap: (index) {
          if (index == 2) {
            return;
          }

          controller.selectedIndex.value = index;
          controller.pageController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_rounded),
            label: "Pesanan",
          ),
          BottomNavigationBarItem(
            icon:
                Visibility(visible: false, child: Icon(Icons.history_rounded)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: "Pesan Masuk",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Akun",
          ),
        ],
      ),
    );
  }
}
