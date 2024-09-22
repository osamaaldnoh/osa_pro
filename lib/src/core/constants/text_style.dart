library text_style;

import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';

//
mixin Font implements FontWeight {
  static FontWeight get l => FontWeight.w300;
  static FontWeight get r => FontWeight.w400;
  static FontWeight get sb => FontWeight.w600;
  static FontWeight get b => FontWeight.w700;
}
//
// class AppTextStyle extends TextStyle {

//     static TextStyle get header => TextStyle();
// }

class AppTextStyle {
  static TextStyle headlineLarge = TextStyle(
    fontFamily: 'cairo',
    fontWeight: Font.b,
    fontSize: AppFontSize.fontSizeOverlarge,
    color: AppColors.textColor,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: 'cairo',
    fontSize: AppFontSize.fontSizeExtraLargeTwenty,
    fontWeight: Font.sb,
    color: AppColors.labelTextColor,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: 'cairo',
    fontSize: AppFontSize.fontSizeExtraLarge,
    fontWeight: Font.r,
    color: AppColors.disabledTextColor,
  );

  static TextStyle titleLarge = TextStyle(
    fontFamily: 'cairo',
    fontWeight: Font.b,
    fontSize: AppFontSize.fontSizeExtraLargeTwenty,
    color: AppColors.textColor,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: 'cairo',
    fontSize: AppFontSize.fontSizeExtraLarge,
    fontWeight: Font.sb,
    color: AppColors.labelTextColor,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: 'cairo',
    fontSize: AppFontSize.fontSizeLarge,
    fontWeight: Font.r,
    color: AppColors.disabledTextColor,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: 'cairo',
    fontSize: AppFontSize.fontSizeExtraLarge,
    fontWeight: Font.b,
    color: AppColors.textColor,
  );

  static TextStyle bodyMedium = TextStyle(
    // letterSpacing: .2,
    fontFamily: 'cairo',
    fontWeight: Font.sb,
    fontSize: AppFontSize.fontSizeLarge,
    color: AppColors.labelTextColor,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: 'cairo',
    fontWeight: Font.r,
    fontSize: AppFontSize.fontSizeDefault,
    color: AppColors.disabledTextColor,
    // color: Colors.grey,
  );

  static TextStyle displayLarge = TextStyle(
    fontFamily: 'cairo',
    fontWeight: Font.b,
    fontSize: AppFontSize.fontSizeLarge,
    color: AppColors.textColor,
  );

  static TextStyle displayMedium = TextStyle(
    fontFamily: 'cairo',
    fontWeight: Font.sb,
    fontSize: AppFontSize.fontSizeDefault,
    color: AppColors.labelTextColor,
  );

  static TextStyle displaySmall = TextStyle(
    fontFamily: 'cairo',
    fontWeight: Font.r,
    fontSize: AppFontSize.fontSizeSmall,
    color: AppColors.disabledTextColor,
  );

  static TextStyle labelLarge = TextStyle(
    fontFamily: 'cairo',
    fontWeight: Font.b,
    fontSize: AppFontSize.fontSizeDefault,
    color: AppColors.textColor,
  );

  static TextStyle labelMedium = TextStyle(
    fontFamily: 'cairo',
    fontSize: AppFontSize.fontSizeSmall,
    fontWeight: Font.sb,
    color: AppColors.labelTextColor,
  );

  static TextStyle labelSmall = TextStyle(
    fontFamily: 'cairo',
    fontSize: AppFontSize.fontSizeExtraSmall,
    fontWeight: Font.r,
    color: AppColors.disabledTextColor,
  );
}
