import 'package:osa_pro/src/features/auth/domain/entities/auth_response_entity.dart';

class AuthResponseModel extends AuthResponseEntity {
  AuthResponseModel(
      {required super.userId,
      required super.refreshToken,
      required super.token});
}
