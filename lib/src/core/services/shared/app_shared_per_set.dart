import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';

class AppSharedPerSet extends GetxController {
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  // Http Connecte
  set setIp(String ip) => _sharedPreferencesService.setString('ip', ip);
  set setPort(String port) => _sharedPreferencesService.setString('port', port);

  // Token
  set setToken(String token) =>
      _sharedPreferencesService.setString('token', token);
  set setRefreshToken(String refreshToken) =>
      _sharedPreferencesService.setString('refreshToken', refreshToken);

  // User
  set setUserId(String userId) =>
      _sharedPreferencesService.setString('userId', userId);

  // Branch
  set setbranchId(String branchId) =>
      _sharedPreferencesService.setString('branchId', branchId);

  // Language
  set setLanguage(String langCode) =>
      _sharedPreferencesService.setString('lang', langCode);

  set setIsLoginUser(bool isLogin) =>
      _sharedPreferencesService.setBool("isLogin", isLogin);
}
