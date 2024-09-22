import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/stoperation/data/sources/stoperation_local_data_sources.dart';

import 'package:osa_pro/src/features/stoperation/domain/entities/stoperation_entities.dart';

import '../sources/stoperation_remote_data_sources.dart';
import '../../domain/repositories/stoperation_repositories.dart';

class StoperationRepositoryImp implements StoperationRepository {
  final StoperationRemoteDataSource remoteDataSource;
  final StoperationLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  StoperationRepositoryImp({
    required this.remoteDataSource,
    required this.localDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, List<StoperationEntity>>> getStoperations() async {
    try {
      final response = await localDataSources.getStoperations();
      if (response.isNotEmpty) {
        return Right(response);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final response = await remoteDataSource.getStoperations();
            response.forEach((value) {
              localDataSources.saveStoperation(value);
            });

            return Right(response);
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
          final response = await remoteDataSource.getStoperations();
          response.forEach((value) {
            localDataSources.saveStoperation(value);
          });

          return Right(response);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return Left(ServerFailure(message: "NetWork error!"));
      }
    }
  }

  @override
  Future<Either<Failure, List<StoperationEntity>>> getStoperation(
      {required int itemId, required int unitId, int? storeId}) async {
    try {
      final response = await localDataSources.getStoperation(
          itemId: itemId, unitId: unitId, storeId: storeId);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
