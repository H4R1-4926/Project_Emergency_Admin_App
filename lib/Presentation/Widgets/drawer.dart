import 'package:emergency_admin_app/Core/colors.dart';

import 'package:emergency_admin_app/Presentation/Splash/splash_screen.dart';
import 'package:emergency_admin_app/Presentation/Widgets/button.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kWhite,
      child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.fromLTRB(16, 1, 16, 1),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 60,
                    child: Center(
                      child: Image(
                          image: AssetImage('assets/img/logo_admin_trans.png')),
                    ),
                  ),
                  Text(
                    'Help Link Admin App',
                    style: GoogleFonts.robotoMono(
                        fontSize: 18,
                        color: kDarkRed,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Log out',
                      style: GoogleFonts.lato(color: kDarkRed),
                    ),
                    content: Text(
                      'Are you sure to logout',
                      style: GoogleFonts.lato(color: kDarkRed),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () async {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SplashPage(),
                                ),
                                (route) => false);
                            final sp = await SharedPreferences.getInstance();
                            sp.clear();
                          },
                          child: Text(
                            'Yes',
                            style: GoogleFonts.lato(color: kDarkRed),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'No',
                            style: GoogleFonts.lato(color: kDarkRed),
                          ))
                    ],
                  ),
                );
              },
              child: const ButtonUi(text: 'L O G O U T')),
          const Text('Version : 1.0.0')
        ],
      ),
    );
  }
}
