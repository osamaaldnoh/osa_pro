import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/units/data/sources/units_local_data_sources.dart';

import 'package:osa_pro/src/features/units/domain/entities/units_entities.dart';

import '../sources/units_remote_data_sources.dart';
import '../../domain/repositories/units_repositories.dart';

class UnitsRepositoryImp implements UnitsRepository {
  final UnitsRemoteDataSource remoteDataSource;
  final UnitsLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  UnitsRepositoryImp(
      {required this.remoteDataSource,
      required this.localDataSources,
      required this.netWorkInfo});

  @override
  Future<Either<Failure, List<UnitsEntity>>> getAllUnits() async {
    try {
      final localUnitsList = await localDataSources.getAllUnits();
      if (localUnitsList.isNotEmpty) {
        return Right(localUnitsList);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteUnitsList = await remoteDataSource.getAllUnits();
            for (var unit in remoteUnitsList) {
              localDataSources.saveUnit(unit);
            }

            return Right(remoteUnitsList);
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
          final remoteUnitsList = await remoteDataSource.getAllUnits();

          return Right(remoteUnitsList);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
    }
    if (await netWorkInfo.isConnected) {
      try {
        final remoteUnitsList = await remoteDataSource.getAllUnits();

        return Right(remoteUnitsList);
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return left(ServerFailure(message: "NetWork error!"));
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
