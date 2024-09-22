import 'dart:ui';

import 'package:get/get.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_get.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_set.dart';

import '../../../../core/config/config.dart';

class LanguageController extends GetxController {
  Locale? language;

  final AppSharedPerSet _appSharedPerSet = sl();
  final AppSharedPerGet _appSharedPerGet = sl();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    _appSharedPerSet.setLanguage = langCode.toString();
    // _appSharedPerSet.setLanguage = langCode;
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // final AppSharedPerGet _appSharedPerGet = Get.find();
    // String? sharedPrefLang = _appSharedPerGet.getLanguage;
    String? sharedPrefLang = _appSharedPerGet.getLanguage.toString();
    if (sharedPrefLang == 'ar') {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      // _appSharedPerSet.setLanguage = Get.deviceLocale!.languageCode.toString();
    }
    super.onInit();
  }
}
