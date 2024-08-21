import 'package:equatable/equatable.dart';
import 'package:osa_pro/src/features/auth/domain/entities/device_info_entity.dart';
import 'package:osa_pro/src/features/auth/domain/entities/token_entity.dart';
import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';

class AuthEntity extends Equatable {
  final TokenEntity? token;
  final UserAuthEntity user;
  final DeviceInfoEntity deviceInfo;
  AuthEntity({
    required this.token,
    required this.user,
    required this.deviceInfo,
  });

  @override
  List<Object?> get props => [token, user, deviceInfo];
}
