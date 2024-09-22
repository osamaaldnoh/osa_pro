import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_store/data/sources/store_local_data_sources.dart';

import 'package:osa_pro/src/features/user_store/domain/entities/store_entities.dart';

import '../sources/store_remote_data_sources.dart';
import '../../domain/repositories/store_repositories.dart';

class StoreRepositoryImp implements StoreRepository {
  final StoreRemoteDataSource remoteDataSource;
  final StoreLocalDataSources localDataSource;
  final NetWorkInfo netWorkInfo;
  StoreRepositoryImp({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, StoreEntity>> getUserStore() async {
    try {
      final localUserStore = await localDataSource.getUserStoreModel();
      if (localUserStore!.name.isNotEmpty) {
        return Right(localUserStore);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            // Get Remote UserStoreEntity
            final reomteUserStoreModel = await remoteDataSource.getUserStore();
            // Save Remote UserStoreEntity in Local DB
            await localDataSource.saveUserStoreModel(reomteUserStoreModel);
            return Right(reomteUserStoreModel);
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
          // Get Remote UserStoreEntity
          final reomteUserStoreModel = await remoteDataSource.getUserStore();
          // Save Remote UserStoreEntity in Local DB
          await localDataSource.saveUserStoreModel(reomteUserStoreModel);
          return Right(reomteUserStoreModel);
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
