import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';

class UserAuthModel extends UserAuthEntity {
  UserAuthModel({required super.username, required super.password});

  factory UserAuthModel.fromJson(Map<String, dynamic> json) {
    return UserAuthModel(
        username: json['username'], password: json['password']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}
