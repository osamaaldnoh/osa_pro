import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_alternative/domain/entities/item_alternative_entities.dart';

abstract class ItemAlternativeRepository {
  Future<Either<Failure, List<ItemAlternativeEntity>>> getItemAlternatives();
}
