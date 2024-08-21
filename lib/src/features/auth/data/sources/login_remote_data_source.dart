// import 'dart:convert';

// import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/config/config.dart';
// import 'package:osa_pro/src/core/error/error.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
// import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/core/utils/aes_encrypt.dart';
// import 'package:osa_pro/src/features/auth/data/models/auth_models.dart';
import 'package:osa_pro/src/features/auth/data/models/auth_response_model.dart';
import 'package:osa_pro/src/features/auth/data/models/user_auth_model.dart';

abstract class LoginRemoteDataSource {
  Future<AuthResponseModel> authLoginUser(UserAuthModel userAuthModel);
  // Future<Unit> loginUser2(AuthModel loginModel);
  // Future<List<AuthModel>> userLoginNew(UserAuthModel userModel);
}

// const BASE_URL = "http://192.168.2.33:10222/api/Authorize/Login";

class LoginRemoteDataSourceImp extends LoginRemoteDataSource {
  // final http.Client client;

  // LoginRemoteDataSourceImp({required this.client});
  HttpMethods networkApiServices = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  @override
  Future<AuthResponseModel> authLoginUser(UserAuthModel userAuthModel) async {
    final body = {
      "token": {"token": "", "refreshToken": ""},
      "user": {
        "username": AesEncryptAndDecrypt.encryptAES(
            text: userAuthModel.username.toString()),
        "password": AesEncryptAndDecrypt.encryptAES(
            text: userAuthModel.password.toString())
      },
      "deviceInfo": {
        "deviceid": "209441",
        "devicename": "S23",
        "devicemodel": "ultra",
        "devicetype": "mobile",
        "userid": 6
      }
    };

    try {
      final data = await networkApiServices.postApi(
          pathUri: EndPoints.loginUri, body: body);
      final authResponseModel = AuthResponseModel(
        userId: AesEncryptAndDecrypt.decryptAES(text: data['userid']),
        refreshToken: data['token']['refreshToken'],
        token: data['token']['token'],
      );
      print("User IDDDDDDDDDDD&&&&&&&&&&&&^^^^^^${data['userid']}");
      // final data = ApiResponse.withSuccess(response);
      // if (response.statusCode == 200) {
      //   Map<String, dynamic> decodedJson =
      //       json.decode(response.body) as Map<String, dynamic>;
      //   body['token'] = decodedJson['token'];
      //   loginModel.deviceInfo['userid'] = decodedJson['userid'];
      //   body['deviceInfo'] = loginModel.deviceInfo;
      // final List<LoginModel> userLogin = [LoginModel.fromJson(body)];
      await _sharedPreferencesService.setString(
          'token', authResponseModel.token);
      await _sharedPreferencesService.setString(
          'refreshToken', authResponseModel.refreshToken);
      await _sharedPreferencesService.setString(
        'userid',
        authResponseModel.userId,
      );

      return authResponseModel;

      // } else {
      //   throw ServerException();
      // }
      // }
      //  catch (e) {
      //   return ApiResponse.withError(ApiErrorHandler.getMessage(e));
      // }
      // client.post(
      //   Uri.parse(BASE_URL),
      //   body: jsonEncode(
      //     body,
      //   ),
      //   headers: <String, String>{
      //     'Content-Type': 'application/json; charset=UTF-8',
      //   },
      // );
      // print(":::::::::::::::::::::::::::::::${response.statusCode}");
      // print(":::::::::::::::::::::::::::::::${response.body}");
      // if (response.statusCode == 200) {
      //   Map<String, dynamic> decodedJson =
      //       json.decode(response.body) as Map<String, dynamic>;
      //   body['token'] = decodedJson['token'];
      //   loginModel.deviceInfo['userid'] = decodedJson['userid'];
      //   body['deviceInfo'] = loginModel.deviceInfo;
      //   // print("Userid :::${decodedJson['userid']}");
      //   // print("Token :::${body['token']}");
      //   // print("User ::: ${body['user']}");
      //   // print("DeviceInfo :::${body['deviceInfo']}");
      //   final List<LoginModel> userLogin = [LoginModel.fromJson(body)];
      //   // final List<LoginModel> userLogin = decodedJson
      //   //     .map<LoginModel>(
      //   //         (jsonPostModel) => LoginModel.fromJson(jsonPostModel))
      //   //     .toList();

      //   return userLogin;
      // return userLogin;
      // } else {
      //   throw ServerException();
      // }
    } catch (e) {
      print("###################${ExceptionHandlers().getExceptionString(e)}");
      throw ExceptionHandlers().getExceptionString(e);
    }
    //  on ServerException {
    //   print("Errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr:::::::::::::::::::::::::");
    //   throw ServerFailure(message: "error from the servier");
    // } on RequestTimeOut {
    //   print(
    //       "Errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr:::::::::::::::::::::::1111::");

    //   throw RequestTimeOut("");
    // } catch (e) {
    //   print("ERRRRRRRRRRRRRRRRRROOR::::::${e}");
    //   throw ServerFailure(message: "error handling data");
    // }
  }

  // @override
  // Future<Unit> loginUser2(AuthModel loginModel) async {
  //   final body = {
  //     "token": loginModel.token,
  //     "user": loginModel.user,
  //     "deviceInfo": loginModel.deviceInfo
  //   };

  //   final response =
  //       await networkApiServices.postApi(url: BASE_URL, body: body);

  //   if (response.statusCode == 201) {
  //     return Future.value(unit);
  //   } else {
  //     throw ServerException(message: "");
  //   }
  // }

  // @override
  // Future<List<AuthModel>> userLoginNew(UserAuthModel userModel) async {
  //   final body = {
  //     "username": userModel.username,
  //     "password": userModel.password,
  //   };

  //   final response = await networkApiServices.postApi(
  //     url: BASE_URL,
  //     body: body,
  //     // headers: {"Content-Type": "application/json; charset=UTF-8"},
  //   );
  //   print(
  //       "Response Body :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::${response.body}");
  //   if (response.statusCode == 200) {
  //     print("Response Body ::::::::${response.body}");
  //     final List decodedJson = json.decode(response.body) as List;
  //     final List<AuthModel> userLogin = decodedJson
  //         .map<AuthModel>((jsonPostModel) => AuthModel.fromJson(jsonPostModel))
  //         .toList();
  //     return userLogin;
  //   } else {
  //     throw ServerException(message: "");
  //   }
  // }
}








// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:http/http.dart' as http;
// import 'package:osa_pro/src/core/error/error.dart';
// import 'package:osa_pro/src/core/services/network/network_api_services.dart';
// import 'package:osa_pro/src/features/auth/data/models/login_models.dart';

// abstract class LoginRemoteDataSource {
//   Future<List<LoginModel>> loginUser(LoginModel loginModel);
//   Future<Unit> loginUser2(LoginModel loginModel);
//   Future<List<LoginModel>> userLoginNew(UserModel userModel);
// }

// const BASE_URL = "http://192.168.2.29:10222/api/Authorize/Login";

// class LoginRemoteDataSourceImp extends LoginRemoteDataSource {

//   final http.Client client;

//   LoginRemoteDataSourceImp({required this.client});
//   // NetworkApiServices networkApiServices = NetworkApiServices(client: sl());

//   @override
//   Future<List<LoginModel>> loginUser(LoginModel loginModel) async {
//     final body = {
//       "token": loginModel.token,
//       "user": loginModel.user,
//       "deviceInfo": loginModel.deviceInfo
//     };

//     final response = await client.post(
//       Uri.parse(BASE_URL),
//       body: jsonEncode(
//         body,
//       ),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//     );
//     // print(":::::::::::::::::::::::::::::::${response.statusCode}");
//     print(":::::::::::::::::::::::::::::::${response.body}");
//     if (response.statusCode == 200) {
//       Map<String, dynamic> decodedJson =
//           json.decode(response.body) as Map<String, dynamic>;
//       body['token'] = decodedJson['token'];
//       loginModel.deviceInfo['userid'] = decodedJson['userid'];
//       body['deviceInfo'] = loginModel.deviceInfo;
//       // print("Userid :::${decodedJson['userid']}");
//       // print("Token :::${body['token']}");
//       // print("User ::: ${body['user']}");
//       // print("DeviceInfo :::${body['deviceInfo']}");
//       final List<LoginModel> userLogin = [LoginModel.fromJson(body)];
//       // final List<LoginModel> userLogin = decodedJson
//       //     .map<LoginModel>(
//       //         (jsonPostModel) => LoginModel.fromJson(jsonPostModel))
//       //     .toList();

//       return userLogin;
//       // return userLogin;
//     } else {
//       throw ServerException();
//     }
//   }

//   @override
//   Future<Unit> loginUser2(LoginModel loginModel) async {
//     final body = {
//       "token": loginModel.token,
//       "user": loginModel.user,
//       "deviceInfo": loginModel.deviceInfo
//     };

//     final response = await client.post(Uri.parse(BASE_URL), body: body);

//     if (response.statusCode == 201) {
//       return Future.value(unit);
//     } else {
//       throw ServerException();
//     }
//   }

//   @override
//   Future<List<LoginModel>> userLoginNew(UserModel userModel) async {
//     final body = {
//       "username": userModel.username,
//       "password": userModel.password,
//     };

//     final response = await client.post(
//       Uri.parse(BASE_URL),
//       body: body,
//       // headers: {"Content-Type": "application/json; charset=UTF-8"},
//     );
//     print(
//         "Response Body :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::${response.body}");
//     if (response.statusCode == 200) {
//       print("Response Body ::::::::${response.body}");
//       final List decodedJson = json.decode(response.body) as List;
//       final List<LoginModel> userLogin = decodedJson
//           .map<LoginModel>(
//               (jsonPostModel) => LoginModel.fromJson(jsonPostModel))
//           .toList();
//       return userLogin;
//     } else {
//       throw ServerException();
//     }
//   }
// }
