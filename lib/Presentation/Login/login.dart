// ignore_for_file: constant_identifier_names

import 'package:emergency_admin_app/Core/colors.dart';
import 'package:emergency_admin_app/Infrastructure/User/user_repository.dart';

import 'package:emergency_admin_app/Presentation/Widgets/bg_widgets.dart';
import 'package:emergency_admin_app/Presentation/Widgets/button.dart';
import 'package:emergency_admin_app/Presentation/Widgets/textfield.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

const user_key = 'loggedIn';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          BgDesign1(
            size: size,
            margin: EdgeInsets.only(top: size.size.height / 1.5),
            borerRdaius: BorderRadius.vertical(
                top: Radius.elliptical(size.size.width, 200)),
          ),
          BgDesign1(
            size: size,
            margin: EdgeInsets.only(bottom: size.size.height / 1.5),
            borerRdaius: BorderRadius.vertical(
                bottom: Radius.elliptical(size.size.width, 200)),
          ),
          Center(
              child: Container(
            height: size.size.height / 2,
            width: size.size.width / 1.2,
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(15)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: formKey,
                  child: Column(children: [
                    const CircleAvatar(
                      backgroundColor: kWhite,
                      radius: 45,
                      child: Center(
                        child: Image(
                            image:
                                AssetImage('assets/img/logo_admin_trans.png')),
                      ),
                    ),
                    NormalTextField(
                      controller: usernameController,
                      keyboardType: TextInputType.emailAddress,
                      label: 'Username',
                      hintText: 'Enter Username',
                    ),
                    PassWordTextField(
                      controller: passwordController,
                      label: 'Password',
                      hintText: 'Enter Password',
                    ),
                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          login();
                        }
                      },
                      child: const ButtonUi(
                        text: 'L O G I N',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Enter Admin Email and Password.',
                        style: GoogleFonts.roboto(
                          color: kDarkRed,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }

  Future<void> login() async {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.setBool(user_key, true);
    await UserController().getUser(username, password);
  }
}
