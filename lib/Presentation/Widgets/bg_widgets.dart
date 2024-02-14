import 'package:emergency_admin_app/Core/colors.dart';

import 'package:flutter/material.dart';

class BgDesign1 extends StatelessWidget {
  const BgDesign1({
    super.key,
    required this.size,
    required this.margin,
    required this.borerRdaius,
  });

  final MediaQueryData size;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borerRdaius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: size.size.height / 1.4,
      width: size.size.width,
      decoration: BoxDecoration(
        borderRadius: borerRdaius,
        color: kDarkRed,
      ),
    );
  }
}
