import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_groups/domain/entities/item_groups_entities.dart';

import '../repositories/item_groups_repositories.dart';

class ItemGroupsUseCase {
  final ItemGroupsRepository repository;

  ItemGroupsUseCase({required this.repository});

  Future<Either<Failure, List<ItemGroupsEntity>>> call() async {
    return await repository.getAllItemGroups();
  }
}
