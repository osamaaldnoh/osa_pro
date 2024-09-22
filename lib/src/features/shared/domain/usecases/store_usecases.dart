import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/store_entities.dart';

import '../repositories/store_repositories.dart';

class StoreUseCase {
  final StoreRepository repository;

  StoreUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
  Future<Either<Failure, StoreEntity>> call() async {
    return await repository.getUserStore();
  }
}
