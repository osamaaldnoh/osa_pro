import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/items/domain/entities/items_entities.dart';

abstract class ItemsRepository {
  Future<Either<Failure, List<ItemsEntity>>> getItems();
}
