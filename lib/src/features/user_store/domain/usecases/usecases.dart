import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class UserStoreUseCase {
  final UserStoreRepository repository;

  UserStoreUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
  Future<Either<Failure, UserStoreEntity>> call() async {
    return await repository.getUserStore();
  }
}
