import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_info/domain/entities/user_entity.dart';

abstract class UserInfoRepository {
  Future<Either<Failure, UserEntity>> getUserInfo();
}
