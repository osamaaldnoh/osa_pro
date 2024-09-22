library app_colors;

import 'package:flutter/material.dart';

class AppColor {
  static Color primaryColor = const Color(0xFF4774E6);
  static Color secondryColor = const Color(0xFFFFFFFF);
  static Color bgColor = const Color(0xFFFEFEFE);

  // Or
  // static Color primaryColor = const Color(0xFF114F5A);
  // static Color secondryColor = const Color(0xFFC49450);
  // static Color bgColor = const Color(0xFFF7F8FB);
  // static Color cardColor = const Color(0xFFFFFFFF);

  static Color textColor = const Color(0xFF565360);
  static Color labelTextColor = const Color(0xFF908E9B);
  static Color disabledTextColor = const Color(0xFFE1DFE9);
  static Color white = const Color(0xFFFFFFFF);
  // static Color black = const Color(0xFF000000);
}

class ThemeShadow {
  static List<BoxShadow> getShadow(BuildContext context) {
    List<BoxShadow> boxShadow = [
      BoxShadow(
          color: Theme.of(context).primaryColor.withOpacity(.075),
          blurRadius: 5,
          spreadRadius: 1,
          offset: const Offset(1, 1))
    ];
    return boxShadow;
  }
}

class AppColorrrs {
  static Color primary = const Color(0xFF335EF7);
  static Color secondary = Color(0xFFFFD300);
  static Color tertiary = const Color(0xFF6C4DDA);
  static Color success = const Color(0xFF0ABE75);
  static Color black = const Color(0xFF181A20);
  static Color black2 = const Color(0xFF1D272F);
  static Color info = const Color(0xFF246BFD);
  static Color warning = const Color(0xFFFACC15);
  static Color error = const Color(0xFFF75555);
  static Color disabled = const Color(0xFFD8D8D8);
  static Color white = const Color(0xFFFFFFFF);
  static Color secondaryWhite = const Color(0xFFF8F8F8);
  static Color tertiaryWhite = const Color(0xFFF7F7F7);
  static Color greeen = const Color(0xFF0ABE75);
  static Color green = const Color(0xFF0ABE75);
  static Color red = const Color(0xFFf65554);
  static Color secondaryWhite2 = const Color(0xFFF9F9FF);
  static Color tertiaryWhite2 = const Color(0xFFfafafa);
  static Color gray = const Color(0xFF9E9E9E);
  static Color gray2 = const Color(0xFF35383F);
  static Color dark2 = const Color(0xFF1F222A);
  static Color greyscale900 = const Color(0xFF212121);
  static Color greyScale800 = const Color(0xFF424242);
  static Color grayscale700 = const Color(0xFF616161);
  static Color grayscale400 = const Color(0xFFBDBDBD);
  static Color greyscale300 = const Color(0xFFE0E0E0);
  static Color greyscale500 = const Color(0xFFFAFAFA);
  static Color greyscale600 = const Color(0xFF757575);
  static Color grayscale200 = const Color(0xFFEEEEEE);
  static Color grayscale100 = const Color(0xFFF5F5F5);
  static Color tansparentPrimary = Color.fromRGBO(36, 107, 253, 0.08);
  static Color transparentSecondary = Color.fromRGBO(108, 77, 218, .15);
  static Color transparentTertiary = Color.fromRGBO(51, 94, 247, .1);
  static Color transparentRed = Color.fromRGBO(255, 62, 61, .15);
  static Color transparentWhite = Color.fromRGBO(255, 255, 255, .2);
  static Color transparentWhite2 = Color.fromRGBO(255, 255, 255, .5);
  static Color grayTie = const Color(0xFFBCBCBC);
}
