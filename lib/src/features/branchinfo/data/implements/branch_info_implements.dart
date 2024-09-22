import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_get.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_set.dart';
import 'package:osa_pro/src/features/branchinfo/data/models/branch_info_model.dart';
import 'package:osa_pro/src/features/branchinfo/data/sources/branch_remote_data_sources.dart';
import 'package:osa_pro/src/features/branchinfo/domain/entities/branchinfo_entities.dart';
import '../../domain/repositories/branchinfo_repositories.dart';
import '../sources/branch_local_data_sources.dart';

class BranchinfoRepositoryImp implements BranchinfoRepository {
  final BranchRemoteDataSource branchRemoteDataSource;
  final NetWorkInfo netWorkInfo;
  final AppSharedPerSet _appSharedPerSet = sl();
  final AppSharedPerGet _appSharedPerGet = sl();
  final BranchLocalDataSources branchLocalDataSources =
      BranchLocalDataSourcesImp();
  BranchinfoRepositoryImp({
    required this.branchRemoteDataSource,
    // required this.branchLocalDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, BranchInfoEntity>> getBranchInfo() async {
    // _appSharedPerSet.setbranchId = '1';
    // final branch = await branchLocalDataSources.saveBranch(BranchInfoModel(
    //     id: 1,
    //     companyId: 1,
    //     name: "الرئيسي",
    //     address: "إب",
    //     phone: "77777",
    //     email: "ERA@Gmail.com",
    //     arReportHeader:
    //         "شركة إيرا تكنولوجي \r\nالعنوان : إب جولة العدين بجوار الاحوال المدنية\r\nالهاتف :777779380",
    //     enReportHeader:
    //         "Era Technology\r\nAddress : Ibb Aodin Street \r\nphone : 777773299",
    //     logo: AppImages.bgLogin));
    // print("branch:::::::::::::::::::::&&&&&&&&&&&&&&&&&********:${branch}");
    try {
      // final branchId = int.tryParse(_appSharedPerGet.getbranchId ?? '');
      // if (branchId != null) {
      //   BranchInfoModel branchInfoModel =
      //       await branchLocalDataSources.getBranch(branchId);
      //   return Right(branchInfoModel);
      // } else {

      if (await netWorkInfo.isConnected) {
        try {
          final remoteBranch = await branchRemoteDataSource.getBranchData();
          _appSharedPerSet.setbranchId = remoteBranch.id.toString();
          await branchLocalDataSources.saveBranch(remoteBranch);
          return Right(remoteBranch);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
      // }
      // final branchId =
      //     int.tryParse(_sharedPreferencesService.getString("branchid") ?? '');
      // if (branchId != null) {
      //   BranchInfoModel branchInfoModel =
      //       await branchLocalDataSources.getBranch(branchId);
      //   return Right(branchInfoModel);
      // } else {

      // }
    } catch (e) {
      if (await netWorkInfo.isConnected) {
        try {
          final remoteBranch = await branchRemoteDataSource.getBranchData();
          _appSharedPerSet.setbranchId = remoteBranch.id.toString();
          await branchLocalDataSources.saveBranch(remoteBranch);
          return Right(remoteBranch);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
      //   if (await netWorkInfo.isConnected) {
      //     try {
      //       final remoteBranch = await branchRemoteDataSource.getBranchData();
      //       await branchLocalDataSources.saveBranch(remoteBranch);
      //       return Right(remoteBranch);
      //     } catch (e) {
      //       return Left(ServerFailure(message: e.toString()));
      //     }
      //   } else {
      //     return left(ServerFailure(message: "NetWork error!"));
      //   }
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
