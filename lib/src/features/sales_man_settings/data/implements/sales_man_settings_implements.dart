// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/sources/sales_man_settings_local_data_sources.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/entities/sales_man_settings_entities.dart';

import '../../domain/repositories/sales_man_settings_repositories.dart';
import '../sources/sales_man_settings_remote_data_sources.dart';

class SalesManSettingsRepositoryImp implements SalesManSettingsRepository {
  final SalesManSettingsRemoteDataSource remoteDataSource;
  final SalesManSettingsLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  SalesManSettingsRepositoryImp({
    required this.remoteDataSource,
    required this.localDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, SalesManSettingsEntity>> getSalesManSettings() async {
    try {
      final localSalesManSettings =
          await localDataSources.getSalesManSettings();
      if (localSalesManSettings!.generateCode.isNotEmpty) {
        return Right(localSalesManSettings);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteSalesManSettings =
                await remoteDataSource.getSalesManSettings();

            return Right(remoteSalesManSettings);
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
          final remoteSalesManSettings =
              await remoteDataSource.getSalesManSettings();

          return Right(remoteSalesManSettings);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
