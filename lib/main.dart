import 'package:emergency_admin_app/Application/Pass/pass_bloc.dart';

import 'package:emergency_admin_app/Application/Splash/splash_bloc.dart';
import 'package:emergency_admin_app/Core/colors.dart';
import 'package:emergency_admin_app/Domain/Di/injectable.dart';

import 'package:emergency_admin_app/Presentation/Splash/splash_screen.dart';
import 'package:emergency_admin_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureInjectable();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<SplashBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PassBloc>(),
        )
      ],
      child: GetMaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: kLightRed),
          debugShowCheckedModeBanner: false,
          home: const SplashPage()),
    );
  }
}
