import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 640),
      splitScreenMode: true,
      minTextAdapt: true,
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
              seedColor: primaryColor,
              background: backgroundColor,
              brightness: Brightness.light,
            ),
            useMaterial3: true,
            textTheme: TextTheme(
              bodyMedium: GoogleFonts.poppins(),
              bodyLarge: GoogleFonts.poppins(),
              labelLarge: GoogleFonts.poppins(),
            )),
      ),
    ),
  );
}
