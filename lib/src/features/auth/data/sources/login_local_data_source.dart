import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/error.dart';
import 'package:osa_pro/src/features/auth/data/models/auth_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginLocalDataSource {
  Future<List<AuthModel>> getCachedLoginUser();
  Future<Unit> cacheLogin(List<AuthModel> loginModels);
}

class LoginLocalDataSourceImp extends LoginLocalDataSource {
  final SharedPreferences sharedPreferences;

  LoginLocalDataSourceImp({required this.sharedPreferences});

  @override
  Future<Unit> cacheLogin(List<AuthModel> loginModels) {
    List loginUserToJson = loginModels
        .map<Map<String, dynamic>>((loginModel) => loginModel.toJson())
        .toList();

    sharedPreferences.setString("CACHED_USER", json.encode(loginUserToJson));
    return Future.value(unit);
  }

  @override
  Future<List<AuthModel>> getCachedLoginUser() {
    final jsonString = sharedPreferences.getString("CACHED_USER");
    if (jsonString != null) {
      List decodeJsonToData = json.decode(jsonString);
      List<AuthModel> jsonToLoginUserModels = decodeJsonToData
          .map<AuthModel>((jsonPostModel) => AuthModel.fromJson(jsonPostModel))
          .toList();

      return Future.value(jsonToLoginUserModels);
    } else {
      throw EmptyException();
    }
  }
}
