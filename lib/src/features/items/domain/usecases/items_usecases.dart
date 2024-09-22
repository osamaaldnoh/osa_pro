import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/items/domain/entities/items_entities.dart';

import '../repositories/items_repositories.dart';

class ItemsUseCase {
  final ItemsRepository repository;

  ItemsUseCase({required this.repository});

  Future<Either<Failure, List<ItemsEntity>>> call() async {
    return await repository.getItems();
  }
}
