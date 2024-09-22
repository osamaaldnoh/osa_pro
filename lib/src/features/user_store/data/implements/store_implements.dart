import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_store/data/sources/store_local_data_sources.dart';

import 'package:osa_pro/src/features/user_store/domain/entities/store_entities.dart';
import 'package:osa_pro/src/features/user_store/domain/repositories/store_repositories.dart';

import '../sources/store_remote_data_sources.dart';

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
  Future<Either<Failure, List<StoreEntity>>> getUserStores() async {
    // final storeModel = await localDataSource.saveUserStoreModel(StoreModel(
    //     id: 4,
    //     name: "مخزن حازم",
    //     accountNumber: 10204010002,
    //     branchId: 1,
    //     storeManager: "حازم عبد العزيز السماوي",
    //     managerPhone: "790570725",
    //     note: "لا يوجد"));
    // print(storeModel);

    try {
      final localUserStore = await localDataSource.getStores();

      if (localUserStore.isNotEmpty) {
        return Right(localUserStore);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            // Get Remote UserStoreEntity
            final reomteUserStoreModel = await remoteDataSource.getUserStore();
            // Save Remote UserStoreEntity in Local DB
            await localDataSource.saveStores(reomteUserStoreModel);
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
          await localDataSource.saveStores(reomteUserStoreModel);
          return Right(reomteUserStoreModel);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }

      // if (await netWorkInfo.isConnected) {
      //   try {
      //     // Get Remote UserStoreEntity
      //     final reomteUserStoreModel = await remoteDataSource.getUserStore();
      //     // Save Remote UserStoreEntity in Local DB
      //     await localDataSource.saveUserStoreModel(reomteUserStoreModel);
      //     return Right(reomteUserStoreModel);
      //   } catch (e) {
      //     return Left(ServerFailure(message: e.toString()));
      //   }
      // } else {
      //   return left(ServerFailure(message: "NetWork error!"));
      // }
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
