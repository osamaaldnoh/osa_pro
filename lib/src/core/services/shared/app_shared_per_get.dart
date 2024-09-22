import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';

class AppSharedPerGet extends GetxController {
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  // Http Connecte
  String? get getIp => _sharedPreferencesService.getString('ip');
  String? get getPort => _sharedPreferencesService.getString('port');

  // Token
  String? get getToken => _sharedPreferencesService.getString('token');
  String? get getRefreshToken =>
      _sharedPreferencesService.getString('refreshToken');

  // User
  String? get getUserId => _sharedPreferencesService.getString('userId');

  // Branch
  String? get getbranchId => _sharedPreferencesService.getString('branchId');

  //Lang
  String? get getLanguage => _sharedPreferencesService.getString('lang');

  //Login
  bool? get getisLogin => _sharedPreferencesService.getBool('isLogin');
}
