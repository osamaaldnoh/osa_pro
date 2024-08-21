import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/theme/app_theme.dart';
import 'src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'src/core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => DismissKeyboard(
        child: GetMaterialApp(
          // theme: ThemeData(
          //     primaryColor: AppColor.primaryColor,
          //     scaffoldBackgroundColor: AppColor.bgColor,
          //     brightness: Brightness.light),
          theme: AppTheme.buildLightThemeData(),
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesName.initial,
          // initialBinding: DependencyInjection(),
          getPages: AppRoute().generate(),
          // onGenerateRoute: AppRoute.generate,
        ),
      ),
    );
  }
}
