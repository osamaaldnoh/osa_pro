import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseEntity>> loginRepo(
      UserAuthEntity userAuthEntity);
  // Future<Either<Failure, Unit>> loginUser(AuthEntity userLogin);
  // Future<Either<Failure, List<AuthEntity>>> userLoginNew(UserEntity userEntity);
}
