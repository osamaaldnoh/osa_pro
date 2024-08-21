// import 'dart:convert';
import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/config/config.dart';
// import 'package:osa_pro/src/core/error/error.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/user_info/data/models/user_model.dart';
// import 'package:http/http.dart' as http;

abstract class UserInfoRemoteDataSource {
  Future<UserModel> getUserInfo();
}

const BASE_URL = "http://192.168.2.33:10222/api/syncdata/userinfo";

class UserInfoRemoteDataSourceImp extends UserInfoRemoteDataSource {
  // final http.Client client;
  // final SharedPreferencesService _sharedPreferencesService =
  //     SharedPreferencesService(sl());
  // final NetworkApiServices networkApiServices =
  //     NetworkApiServices(client: sl());

  // UserInfoRemoteDataSourceImp({required this.client});
  HttpMethods networkApiServices = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  @override
  Future<UserModel> getUserInfo() async {
    print(
        "User IDDDDDDDDDD!!!!!!${int.tryParse(_sharedPreferencesService.getString("userid").toString())}");
    final body = {
      "userid": int.tryParse(
          _sharedPreferencesService.getString("userid").toString()),
      "branchid": null,
      "dateTime": null
    };
    try {
      final response = await networkApiServices.postApi(
          pathUri: EndPoints.userInfoUri, body: body);
      // final response = await client.post(
      //   Uri.parse(BASE_URL),
      //   body: jsonEncode(
      //     body,
      //   ),
      //   headers: <String, String>{
      //     'Content-Type': 'application/json; charset=UTF-8',
      //     'Authorization': 'Bearer $token'
      //   },
      // );
      UserModel userModel = UserModel.fromJson(response);
      _sharedPreferencesService.setString(
          'branchid', userModel.branchId.toString());
      // if (response.statusCode == 200) {
      //   Map<String, dynamic> decodedJson =
      //       json.decode(response.body) as Map<String, dynamic>;

      // return UserModel.fromJson(response);
      return userModel;
      // } else {
      //   throw FetchDataException();
      // }
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
