import 'dart:developer';

import 'package:emergency_admin_app/Application/Splash/splash_bloc.dart';
import 'package:emergency_admin_app/Core/colors.dart';
import 'package:emergency_admin_app/Presentation/Home/home.dart';
import 'package:emergency_admin_app/Presentation/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashBloc>().add(const Check());
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        log(state.toString());
        if (state.notLogged) {
          Get.to(() => LoginPage());
        } else {
          Get.to(() => const HomePage());
        }
      },
      child: Scaffold(
        backgroundColor: kWhite,
        body: Center(
          child: LottieBuilder.asset(
            'assets/lottie/loading.json',
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
