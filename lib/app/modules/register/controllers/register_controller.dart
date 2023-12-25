// ignore_for_file: library_prefixes

import 'package:daur_minyak_getx/app/data/entities/User.dart';
import 'package:daur_minyak_getx/app/routes/app_pages.dart';
import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fireAuth;

class RegisterController extends GetxController {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final fireAuth.FirebaseAuth firebaseAuth = fireAuth.FirebaseAuth.instance;

  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController passConfirmC = TextEditingController();
  TextEditingController hpC = TextEditingController();

  final RxBool isChecked = false.obs;
  final RxBool isLoading = false.obs;

  Future<void> register(
      {required String email,
      required String password,
      required String passwordConfirmation,
      required String name,
      required String phoneNumber,
      required bool isChecked}) async {
    try {
      isLoading.value = true;

      if (isLoading.value == true) {
        Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      if (isChecked == false) {
        Get.back();
        Get.snackbar(
          "Peringatan",
          "Anda belum menyetujui syarat dan ketentuan",
          backgroundColor: orangeColor,
        );
        return;
      }

      if (password != passwordConfirmation) {
        Get.back();
        Get.snackbar(
          "Peringatan",
          "Password tidak sama",
          backgroundColor: orangeColor,
        );
        return;
      }

      var userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (userCredential.user == null) {
        Get.back();
        Get.snackbar(
          "Terjadi Kesalahan",
          "Gagal membuat akun",
          backgroundColor: orangeColor,
        );
        return;
      }

      User user = await createUser(
          uid: userCredential.user!.uid,
          email: email,
          name: name,
          phone: phoneNumber);

      if (user.uid == null) {
        Get.back();
        Get.snackbar(
          "Terjadi Kesalahan",
          "Gagal membuat akun",
          backgroundColor: orangeColor,
        );
        return;
      } else {
        Get.back();
        Get.snackbar(
          "Berhasil",
          "Akun berhasil dibuat",
          backgroundColor: primaryColor,
        );

        Get.offAllNamed(Routes.LOGIN);
      }
    } on FirebaseException catch (e) {
      Get.back();
      Get.snackbar(
        "Terjadi Kesalahan",
        e.message!,
        backgroundColor: orangeColor,
      );
    } finally {
      isLoading.value = false;
      Future.delayed(const Duration(seconds: 2), () {
        Get.back();
      });
    }
  }

  Future<User> createUser(
      {required String uid,
      required String email,
      required String name,
      required String phone}) async {
    try {
      DocumentReference<Map<String, dynamic>> documentReference =
          _firebaseFirestore.doc('users/$uid');

      Map<String, dynamic> data = {
        'uid': uid,
        'email': email,
        'name': name,
        'phone': phone,
        'balance': 0,
        'verified': false,
      };

      await documentReference.set(data);

      return User.fromJson(data);
    } on FirebaseException catch (e) {
      Get.snackbar("Terjadi Kesalahan", e.message!);
      rethrow;
    }
  }
}
