import 'package:osa_pro/src/features/auth/domain/entities/auth_entities.dart';

class AuthModel extends AuthEntity {
  AuthModel(
      {required super.token, required super.user, required super.deviceInfo});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
        token: json['token'],
        user: json['user'],
        deviceInfo: json['deviceInfo']);
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'user': user,
      'deviceInfo': deviceInfo,
    };
  }
}

// class TokenModel {
//   final String token;
//   final String refreshToken;
//   TokenModel({
//     required this.token,
//     required this.refreshToken,
//   });

//   factory TokenModel.fromJson(Map<String, dynamic> json) {
//     return TokenModel(
//       token: json['token'],
//       refreshToken: json['refreshToken'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'token': token,
//       'refreshToken': refreshToken,
//     };
//   }
// }

// class UserModel {
//   final String username;
//   final String password;
//   UserModel({
//     required this.username,
//     required this.password,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       username: json['username'],
//       password: json['password'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'username': username,
//       'password': password,
//     };
//   }
// }

// class DeviceInfoModel {
//   final String deviceid;
//   final String devicename;
//   final String devicemodel;
//   final String devicetype;
//   final String userid;
//   DeviceInfoModel(
//       {required this.deviceid,
//       required this.devicename,
//       required this.devicemodel,
//       required this.devicetype,
//       required this.userid});

//   factory DeviceInfoModel.fromJson(Map<String, dynamic> json) {
//     return DeviceInfoModel(
//         deviceid: json['deviceid'],
//         devicename: json['devicename'],
//         devicemodel: json['devicemodel'],
//         devicetype: json['devicetype'],
//         userid: json['userid']);
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'deviceid': deviceid,
//       'devicename': devicename,
//       'devicemodel': devicemodel,
//       'devicetype': devicetype,
//       'userid': userid
//     };
//   }
// }
