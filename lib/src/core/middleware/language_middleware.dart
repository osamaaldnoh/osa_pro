import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/routes/names.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_get.dart';

class LanguageMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  final AppSharedPerGet _appSharedPerGet = sl();

  @override
  RouteSettings? redirect(String? route) {
    if (_appSharedPerGet.getLanguage.toString().isNotEmpty &&
        _appSharedPerGet.getLanguage.toString() != "" &&
        _appSharedPerGet.getLanguage.toString() != 'null') {
      return const RouteSettings(name: RoutesName.auth);
    }
    return null;
  }
}
