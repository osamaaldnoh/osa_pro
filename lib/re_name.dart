import 'package:get/get.dart';
import 'package:osa_pro/src/core/localization/localization.dart';
import 'package:osa_pro/src/core/theme/app_theme.dart';
import 'package:osa_pro/src/features/language/presentation/getX/language_controller.dart';
import 'package:flutter/material.dart';
import 'src/core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootApp extends StatelessWidget {
  RootApp({super.key});
  final LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => GetMaterialApp(
        // theme: ThemeData(
        //     primaryColor: AppColor.primaryColor,
        //     scaffoldBackgroundColor: AppColor.bgColor,
        //     brightness: Brightness.light),
        theme: AppTheme.buildLightThemeData(),
        debugShowCheckedModeBanner: false,
        translations: LocaleTranslations(),
        locale: languageController.language,
        // fallbackLocale: languageController.language,
        // initialBinding: DependencyInjection(),
        getPages: AppRoute().generate(),
        initialRoute: RoutesName.initial,
        // onGenerateRoute: AppRoute.generate,
      ),
    );
  }
}
