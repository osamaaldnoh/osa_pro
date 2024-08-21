import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';

import '../repositories/repositories.dart';

class LoginUserUseCase {
  final AuthRepository repository;

  LoginUserUseCase({required this.repository});

  Future<Either<Failure, AuthResponseEntity>> login(
      UserAuthEntity userAuthEntity) async {
    return await repository.loginRepo(userAuthEntity);
  }

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
