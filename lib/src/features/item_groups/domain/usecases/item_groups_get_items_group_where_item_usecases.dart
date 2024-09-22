import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_groups/domain/entities/item_groups_entities.dart';
import '../repositories/item_groups_repositories.dart';

class GetItemsGroupWhereItemUsecases {
  final ItemGroupsRepository repository;

  GetItemsGroupWhereItemUsecases({required this.repository});

  Future<Either<Failure, List<ItemGroupsEntity>>> call(int itemGroupId) async {
    return await repository.getItemsGroupWhereItemUsecases(itemGroupId);
  }
}
