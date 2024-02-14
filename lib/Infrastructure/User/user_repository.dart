// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_admin_app/Core/colors.dart';
import 'package:emergency_admin_app/Domain/User/i_user_repo.dart';

import 'package:emergency_admin_app/Presentation/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepo)
class UserController implements IUserRepo {
  @override
  Future<void> getUser(String username, String password) async {
    await FirebaseFirestore.instance.collection('admin').get().then((value) {
      value.docs.forEach((element) {
        if (element.data()['username'] != username) {
          Get.showSnackbar(GetSnackBar(
            messageText: Center(
              child: Text(
                'Invalid username',
                style: GoogleFonts.roboto(
                    color: kWhite, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            maxWidth: 200,
            borderRadius: 25,
            backgroundColor: kDarkRed,
            snackPosition: SnackPosition.TOP,
            snackStyle: SnackStyle.FLOATING,
            boxShadows: const [
              BoxShadow(blurRadius: 50, color: Colors.black54)
            ],
            duration: const Duration(seconds: 2),
          ));
        } else if (element.data()['password'] != password) {
          Get.showSnackbar(GetSnackBar(
            messageText: Center(
              child: Text(
                'Invalid Password',
                style: GoogleFonts.roboto(
                    color: kWhite, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            maxWidth: 200,
            borderRadius: 25,
            backgroundColor: kDarkRed,
            snackPosition: SnackPosition.TOP,
            snackStyle: SnackStyle.FLOATING,
            boxShadows: const [
              BoxShadow(blurRadius: 50, color: Colors.black54)
            ],
            duration: const Duration(seconds: 2),
          ));
        } else {
          Get.to(() => const SplashPage());
        }
      });
    });
  }
}
