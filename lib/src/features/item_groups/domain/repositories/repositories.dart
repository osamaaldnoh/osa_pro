import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_groups/domain/entities/entities.dart';

abstract class ItemGroupsRepository {
  // Future<User> getUser(String userId);

  Future<Either<Failure, List<ItemGroupsEntity>>> getAllItemGroups();
}
