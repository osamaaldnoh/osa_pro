import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_store/data/sources/user_store_local_data_sources.dart';

import 'package:osa_pro/src/features/user_store/domain/entities/entities.dart';

import '../sources/user_store_remote_data_sources.dart';
import '../../domain/repositories/repositories.dart';

class UserStoreRepositoryImp implements UserStoreRepository {
  final UserStoreRemoteDataSource remoteDataSource;
  final UserStoreLocalDataSources localDataSource;
  final NetWorkInfo netWorkInfo;
  UserStoreRepositoryImp({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, UserStoreEntity>> getUserStore() async {
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
