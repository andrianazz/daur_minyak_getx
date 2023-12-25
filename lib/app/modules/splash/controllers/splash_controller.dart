import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late SharedPreferences prefs;

  @override
  void onInit() {
    super.onInit();

    checkLogin();
  }

  void checkLogin() async {
    prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLogin') ?? false;
    if (isLogin) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
  }
}
