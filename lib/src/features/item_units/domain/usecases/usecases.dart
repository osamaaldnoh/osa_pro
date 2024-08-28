import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_units/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class ItemUnitsUseCase {
  final ItemUnitsRepository repository;

  ItemUnitsUseCase({required this.repository});

  Future<Either<Failure, List<ItemUnitsEntity>>> call() async {
    return await repository.getItemUnits();
  }
}
