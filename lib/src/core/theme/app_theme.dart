import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/constants/text_style.dart';

class AppTheme {
  static ThemeData buildLightThemeData() {
    final base = ThemeData.light();
    // final baseTextTheme = GoogleFonts.interTextTheme(base.textTheme);
    return base.copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.bgColor,
      primaryColor: AppColors.primaryColor,
      highlightColor: AppColors.whiteColor,
      // hintColor: AppColors.secondaryTextColor,
      disabledColor: AppColors.hintTextColor,
      splashColor: AppColors.secondaryColor,
      colorScheme: const ColorScheme.light(
        secondary: AppColors.primaryColor,
        onPrimary: AppColors.whiteColor,
        primary: AppColors.primaryColor,
        onPrimaryContainer: AppColors.whiteColor,
        error: AppColors.redColor,
        onSecondaryContainer: AppColors.whiteColor,
        // onSecondaryContainer: Color(0xFFF3F9FF),
        outline: AppColors.primaryColor,
        // outline: Color(0xff2C66B4),
        onTertiary: AppColors.primaryColor,
        // onTertiary: Color(0xFFE9F3FF),
        primaryContainer: AppColors.whiteColor,
        // primaryContainer: Color(0xFFf0f0f0),
        secondaryContainer: AppColors.whiteColor,

        // secondaryContainer: Color(0xFFF2F2F2),
      ),

      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      }),

      // Text Theme
      textTheme: TextTheme(
        headlineLarge: AppTextStyle.headlineLarge,
        headlineMedium: AppTextStyle.headlineMedium,
        headlineSmall: AppTextStyle.headlineSmall,
        titleLarge: AppTextStyle.bodySmall,
        titleMedium: AppTextStyle.titleMedium,
        titleSmall: AppTextStyle.titleSmall,
        bodyLarge: AppTextStyle.bodyLarge,
        bodyMedium: AppTextStyle.bodyMedium,
        bodySmall: AppTextStyle.bodySmall,
        displayLarge: AppTextStyle.displayLarge,
        displayMedium: AppTextStyle.displayMedium,
        displaySmall: AppTextStyle.displaySmall,
        labelLarge: AppTextStyle.labelLarge,
        labelMedium: AppTextStyle.labelMedium,
        labelSmall: AppTextStyle.labelSmall,
      ),

      // cardTheme
      cardTheme: const CardTheme(
          color: AppColors.whiteColor,
          elevation: SizeManager.elevationZero,
          shadowColor: AppColors.blackColor),

      // appBarTheme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: AppColors.primaryColor,
        iconTheme: const IconThemeData(
          color: AppColors.titleBarColor,
        ),
        elevation: SizeManager.elevationZero,
        shadowColor: AppColors.shadowsColor,
        titleTextStyle: AppTextStyle.headlineMedium.copyWith(
          color: AppColors.titleBarColor,
        ),
        // .copyWith(
        //   fontSize: FontSize.fontSizeLarge,
        //   fontWeight: FontWeightManager.regular,
        // ),
      ),

      // buttonTheme
      buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: AppColors.bottomSheet,
        buttonColor: AppColors.primaryColor,
        splashColor: AppColors.secondaryColor,
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppTextStyle.bodyMedium,
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusManager.r20),
          ),
        ),
      ),

      // OutlinedButton
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          // primary: AppColorsNew.kwhiteColor,
          side: const BorderSide(
            color: AppColors.primaryColor,
          ),
          textStyle:
              AppTextStyle.bodyMedium.apply(color: AppColors.primaryColor),
          //   .copyWith(
          //   fontSize: FontSize.fontSizeLarge,
          //   fontWeight: FontWeightManager.regular,
          //   color: AppColorsNew.kprimaryColor,
          // ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusManager.r15),
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.whiteColor,
        // contentPadding
        contentPadding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p16,
          vertical: PaddingManager.p8,
        ),
        // Hint Style
        hintStyle: AppTextStyle.displayMedium,

        // Label Style
        labelStyle: AppTextStyle.displaySmall.copyWith(
          color: AppColors.bottomSheet,
          fontSize: AppFontSize.fontSizeDefault,
          // fontWeight: FontWeightManager.medium,
        ),

        // Error Style
        errorStyle: AppTextStyle.displaySmall.copyWith(
          color: AppColors.redColor,
        ),

        // Enabled Border
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              RadiusManager.r15,
            ),
          ),
          borderSide: BorderSide.none,
        ),

        // Focused Border
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              RadiusManager.r15,
            ),
          ),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: SizeManager.widthBorder,
          ),
        ),

        // Error Border
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              RadiusManager.r15,
            ),
          ),
          borderSide: BorderSide(
            color: AppColors.redColor,
            width: SizeManager.widthBorder,
          ),
        ),

        // Focused Error Border
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              RadiusManager.r15,
            ),
          ),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: SizeManager.widthBorder,
          ),
        ),
      ),
    );
  }
}
