import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_units/domain/entities/item_units_entities.dart';

import '../repositories/item_units_repositories.dart';

class GetUnitsWhereItemUsecases {
  final ItemUnitsRepository repository;

  GetUnitsWhereItemUsecases({required this.repository});

  Future<Either<Failure, List<ItemUnitsEntity>>> call(int itemId) async {
    return await repository.getUnitsWhereItem(itemId);
  }
}
