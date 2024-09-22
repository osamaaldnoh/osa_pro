import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/core/utils/convert_image.dart';
import 'package:osa_pro/src/features/items/data/sources/items_local_data_sources.dart';

import 'package:osa_pro/src/features/items/domain/entities/items_entities.dart';

import '../sources/items_remote_data_sources.dart';
import '../../domain/repositories/items_repositories.dart';

class ItemsRepositoryImp implements ItemsRepository {
  final ItemsRemoteDataSource remoteDataSource;
  final ItemsLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  ItemsRepositoryImp(
      {required this.remoteDataSource,
      required this.localDataSources,
      required this.netWorkInfo});

  @override
  Future<Either<Failure, List<ItemsEntity>>> getItems() async {
    try {
      final response = await localDataSources.getItems();
      if (response.isNotEmpty) {
        return Right(response);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteItems = await remoteDataSource.getItems();
            remoteItems.forEach((value) async {
              localDataSources.saveItem(value);
            });
            return Right(remoteItems);
          } catch (e) {
            return Left(ServerFailure(message: e.toString()));
          }
        } else {
          return Left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (e) {
      if (await netWorkInfo.isConnected) {
        try {
          final remoteItems = await remoteDataSource.getItems();
          remoteItems.forEach((value) {
            localDataSources.saveItem(value);
          });
          return Right(remoteItems);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return Left(ServerFailure(message: "NetWork error!"));
      }
    }
  }
}
