import 'package:emergency_admin_app/Core/colors.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonUi extends StatelessWidget {
  const ButtonUi({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 40,
        width: 250,
        decoration:
            BoxDecoration(color: kRed, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.lato(color: kWhite, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
