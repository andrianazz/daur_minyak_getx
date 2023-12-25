import 'package:daur_minyak_getx/firebase_options.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey, // navigation bar color
    statusBarColor: primaryColor, // status bar color
  ));

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
