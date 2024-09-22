import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/colorss.dart';
import 'package:osa_pro/src/core/constants/text_style1.dart';

class AppTheme {
  static ThemeData buildLightThemeData() {
    final base = ThemeData.light();
    // final baseTextTheme = GoogleFonts.interTextTheme(base.textTheme);
    return base.copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColorrrs.white,
      primaryColor: AppColorrrs.primary,
      highlightColor: AppColorrrs.secondary,
      // hintColor: AppColorrrs.secondaryTextColor,
      disabledColor: AppColorrrs.disabled,
      splashColor: AppColorrrs.secondaryWhite,
      colorScheme: ColorScheme.light(
        secondary: AppColorrrs.secondary,
        onPrimary: AppColorrrs.info,
        primary: AppColorrrs.primary,
        onPrimaryContainer: AppColorrrs.tansparentPrimary,
        error: AppColorrrs.error,
        onSecondaryContainer: AppColorrrs.white,
        // onSecondaryContainer: Color(0xFFF3F9FF),
        outline: AppColorrrs.gray2,
        // outline: Color(0xff2C66B4),
        onTertiary: AppColorrrs.tertiary,
        // onTertiary: Color(0xFFE9F3FF),
        primaryContainer: AppColorrrs.secondaryWhite,
        // primaryContainer: Color(0xFFf0f0f0),
        secondaryContainer: AppColorrrs.secondaryWhite,

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
      // headline1: TextStyle(
      //   fontWeight: FontWeight.bold, fontSize: 22, color: AppColorrrs.blackColor,
      //   fontFamily: FontConstants.fontLight,
      //   ),
      // headline2: TextStyle(
      //     fontWeight: FontWeight.bold, fontSize: 26, color: AppColorrrs.blackColor,
      //      fontFamily: FontConstants.fontLight,
      //      ),
      // bodyText1: TextStyle(
      //     height: 2,
      //     color: AppColorrrs.grayColor,
      //     fontWeight: FontWeight.bold,
      //     fontSize: 14,
      //      fontFamily: FontConstants.fontLight,),
      // bodyText2: TextStyle(height: 2, color: AppColorrrs.grayColor, fontSize: 14,
      //  fontFamily: FontConstants.fontLight,),
      // ),

      // cardTheme
      cardTheme: CardTheme(
          color: AppColorrrs.white,
          // elevation: SizeManager.elevationZero,
          shadowColor: AppColorrrs.grayTie),

      // appBarTheme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: AppColorrrs.primary,
        iconTheme: IconThemeData(
          color: AppColorrrs.secondary,
        ),
        // elevation: SizeManager.elevationZero,
        shadowColor: AppColorrrs.gray2,
        titleTextStyle: AppTextStyle.headlineMedium.apply(
          color: AppColorrrs.white,
        ),
        // .robotoMedium.copyWith(
        //   color: AppColorrrs.white,
        // ),
        // .copyWith(
        //   fontSize: FontSize.fontSizeLarge,
        //   fontWeight: FontWeightManager.regular,
        // ),
      ),

      // buttonTheme
      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: AppColorrrs.info,
        buttonColor: AppColorrrs.primary,
        splashColor: AppColorrrs.secondary,
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppTextStyle.bodyMedium,
          // .copyWith(
          //   // fontSize: FontSize.fontSizeLarge,
          //   // fontWeight: FontWeightManager.regular,
          //   color: AppColorrrs.white,
          // ),
          backgroundColor: AppColorrrs.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),

      // OutlinedButton
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          // primary: AppColorrrsNew.kwhiteColor,
          side: BorderSide(
            color: AppColorrrs.primary,
          ),
          textStyle: AppTextStyle.bodyMedium.apply(color: AppColorrrs.primary),
          // robotoMedium.copyWith(
          //   color: AppColorrrs.primary,
          // ),
          // AppStyles.bodyMedium,
          //   .copyWith(
          //   fontSize: FontSize.fontSizeLarge,
          //   fontWeight: FontWeightManager.regular,
          //   color: AppColorrrsNew.kprimaryColor,
          // ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorrrs.white,
        // contentPadding
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        // Hint Style
        hintStyle: AppTextStyle.displayMedium,
        // TextStyle(
        //   color: AppColorrrs.gray2,
        //   fontSize: 14,
        //   // fontWeight: FontWeightManager.medium,
        // ),

        // Label Style
        labelStyle: TextStyle(
          color: AppColorrrs.grayTie,
          fontSize: 14,
          // fontWeight: FontWeightManager.medium,
        ),

        // Error Style
        errorStyle: TextStyle(
          color: AppColorrrs.red,
          fontSize: 12,
          // fontWeight: FontWeightManager.medium,
        ),
        // border: ,
        // Enabled Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          borderSide: BorderSide(
            color: AppColorrrs.grayscale400,
          ),
        ),

        // Focused Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          borderSide: BorderSide(
            color: AppColorrrs.primary,
            width: 1.5,
          ),
        ),

        // Error Border
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          borderSide: BorderSide(
            color: AppColorrrs.red,
            width: 1.5,
          ),
        ),

        // Focused Error Border
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          borderSide: BorderSide(
            color: AppColorrrs.primary,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
