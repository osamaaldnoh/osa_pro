import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_units/data/sources/item_units_local_data_sources.dart';

import 'package:osa_pro/src/features/item_units/domain/entities/entities.dart';

import '../sources/item_units_remote_data_sources.dart';
import '../../domain/repositories/repositories.dart';

class ItemUnitsRepositoryImp implements ItemUnitsRepository {
  final ItemUnitsRemoteDataSource remoteDataSource;
  final ItemUnitsLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  ItemUnitsRepositoryImp(
      {required this.remoteDataSource,
      required this.localDataSources,
      required this.netWorkInfo});

  @override
  Future<Either<Failure, List<ItemUnitsEntity>>> getItemUnits() async {
    try {
      final localItemUnits = await localDataSources.getItemUnits();
      if (localItemUnits.isNotEmpty) {
        return Right(localItemUnits);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteItemUnits = await remoteDataSource.getItemUnits();

            return Right(remoteItemUnits);
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

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
