import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/store_entities.dart';

abstract class StoreRepository {
  // Future<User> getUser(String userId);

  Future<Either<Failure, StoreEntity>> getUserStore();
}
