import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_get.dart';
import '../routes/names.dart';

class AuthMiddleware extends GetMiddleware {
  // final AppSharedPerGet sharedPerGet = Get.find();
  AppSharedPerGet appSharedPerGet = AppSharedPerGet();

  @override
  RouteSettings? redirect(String? route) {
    if (appSharedPerGet.getisLogin == true) {
      return const RouteSettings(name: RoutesName.rootPage);
    }
    return null;
  }
}
