import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_groups/data/sources/item_groups_local_data_sources.dart';

import 'package:osa_pro/src/features/item_groups/domain/entities/item_groups_entities.dart';

import '../sources/item_groups_remote_data_sources.dart';
import '../../domain/repositories/item_groups_repositories.dart';

class ItemGroupsRepositoryImp implements ItemGroupsRepository {
  final ItemGroupsRemoteDataSource remoteDataSource;
  final ItemGroupsLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  ItemGroupsRepositoryImp(
      {required this.remoteDataSource,
      required this.localDataSources,
      required this.netWorkInfo});

  @override
  Future<Either<Failure, List<ItemGroupsEntity>>> getAllItemGroups() async {
    try {
      final localItemGroupsList = await localDataSources.getAllItemGroups();
      if (localItemGroupsList.isNotEmpty) {
        return Right(localItemGroupsList);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteItemGroups = await remoteDataSource.getAllItemGroups();
            for (var itemGroup in remoteItemGroups) {
              localDataSources.saveItemGroup(itemGroup);
            }

            return Right(remoteItemGroups);
          } catch (e) {
            return Left(ServerFailure(message: e.toString()));
          }
        } else {
          return left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ItemGroupsEntity>>>
      getItemsGroupWhereItemUsecases(int itemGroupId) async {
    try {
      final response =
          await localDataSources.getItemGroupsWhereItemId(itemGroupId);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
