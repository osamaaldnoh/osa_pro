import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_groups/data/sources/item_groups_local_data_sources.dart';

import 'package:osa_pro/src/features/item_groups/domain/entities/entities.dart';

import '../sources/item_groups_remote_data_sources.dart';
import '../../domain/repositories/repositories.dart';

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

            return Right(remoteItemGroups);
          } catch (e) {
            return Left(ServerFailure(message: e.toString()));
          }
        } else {
          return left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (e) {
      if (await netWorkInfo.isConnected) {
        try {
          final remoteItemGroups = await remoteDataSource.getAllItemGroups();

          return Right(remoteItemGroups);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
    }
    if (await netWorkInfo.isConnected) {
      try {
        final remoteItemGroups = await remoteDataSource.getAllItemGroups();

        return Right(remoteItemGroups);
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return left(ServerFailure(message: "NetWork error!"));
    }
  }
}
