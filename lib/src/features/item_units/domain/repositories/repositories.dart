import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_units/domain/entities/entities.dart';

abstract class ItemUnitsRepository {
  Future<Either<Failure, List<ItemUnitsEntity>>> getItemUnits();
}
