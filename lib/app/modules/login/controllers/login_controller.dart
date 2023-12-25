import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart' as fireAuth;

class LoginController extends GetxController {
  final fireAuth.FirebaseAuth firebaseAuth = fireAuth.FirebaseAuth.instance;

  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isLoading = false.obs;

  Future<void> login({required String email, required String password}) async {
    try {
      isLoading.value = true;

      if (isLoading.value == true) {
        Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      var userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      if (userCredential.user != null) {
        Get.back();

        Get.snackbar(
            'Login success', 'Welcome ${userCredential.user!.displayName}');
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.back();

        Get.snackbar('Login failed', 'Please check your email and password');
      }
    } on FirebaseException catch (e) {
      Get.back();

      Get.snackbar('Login failed', e.message!);
      debugPrint(e.toString());
    } catch (e) {
      Get.back();

      Get.snackbar('Login failed', e.toString());
    } finally {
      isLoading.value = false;
      Future.delayed(const Duration(seconds: 2), () {
        Get.back();
      });
    }
  }
}
