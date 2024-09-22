import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/branchinfo/data/models/branch_info_model.dart';
import 'package:osa_pro/src/features/branchinfo/data/sources/branch_remote_data_sources.dart';
import 'package:osa_pro/src/features/branchinfo/domain/entities/branchinfo_entities.dart';
import '../../domain/repositories/repositories.dart';
import '../sources/branch_local_data_sources.dart';

class BranchinfoRepositoryImp implements BranchinfoRepository {
  final BranchRemoteDataSource branchRemoteDataSource;
  final NetWorkInfo netWorkInfo;
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  final BranchLocalDataSources branchLocalDataSources =
      BranchLocalDataSourcesImp();
  BranchinfoRepositoryImp({
    required this.branchRemoteDataSource,
    // required this.branchLocalDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, BranchInfoEntity>> getBranchInfo() async {
    try {
      final branchId =
          int.tryParse(_sharedPreferencesService.getString("branchid") ?? '');
      if (branchId != null) {
        BranchInfoModel branchInfoModel =
            await branchLocalDataSources.getBranch(branchId);
        return Right(branchInfoModel);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteBranch = await branchRemoteDataSource.getBranchData();
            await branchLocalDataSources.saveBranch(remoteBranch);
            return Right(remoteBranch);
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
          final remoteBranch = await branchRemoteDataSource.getBranchData();
          await branchLocalDataSources.saveBranch(remoteBranch);
          return Right(remoteBranch);
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
