// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:osa_pro/src/core/error/error.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/user_info/data/models/user_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

abstract class UserInfoLocalDataSources {
  Future<UserModel?> getUser(int userId);
  Future<int> saveUser(UserModel userModel);
}

class UserInfoLocalDataSourcesImp extends UserInfoLocalDataSources {
  // final SharedPreferences sharedPreferences;

  // UserInfoLocalDataSourcesImp({required this.sharedPreferences});

  @override
  Future<UserModel?> getUser(int userId) async {
    AppDatabase db = AppDatabase.instance();
    UserModel? user = await (db.select(db.userTable)
          ..where((tbl) => tbl.id.equals(userId)))
        .getSingleOrNull();

    return user;
  }

  @override
  Future<int> saveUser(UserModel userModel) async {
    
    print("User Model :${userModel}");
    AppDatabase db = AppDatabase.instance();
    // try {
    final req = await db.into(db.userTable).insert(userModel.toCompanion());
    print('Save user Sucss');
    return req;
    // } catch (e) {
    //   throw Exception("Local save user error");
    // }
  }

  // @override
  // Future<Unit> cacheUserInfo(UserModel userModel) {
  //   final userInfoToJson = userModel.toJson();

  //   sharedPreferences.setString(
  //       "CACHED_USER_INFO", json.encode(userInfoToJson));
  //   return Future.value(unit);
  // }

  // @override
  // Future<UserModel> getCachedUserInfo() {
  //   final jsonString = sharedPreferences.getString("CACHED_USER_INFO");
  //   if (jsonString != null) {
  //     Map<String, dynamic> decodeJsonToData = json.decode(jsonString);
  //     UserModel jsonToLoginUserModels = UserModel.fromJson(decodeJsonToData);

  //     return Future.value(jsonToLoginUserModels);
  //   } else {
  //     throw EmptyException();
  //   }
  // }
}
