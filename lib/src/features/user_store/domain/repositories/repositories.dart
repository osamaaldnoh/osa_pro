import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/entities.dart';

abstract class UserStoreRepository {
  // Future<User> getUser(String userId);

  Future<Either<Failure, UserStoreEntity>> getUserStore();
}
