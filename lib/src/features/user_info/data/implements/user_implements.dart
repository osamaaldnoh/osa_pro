import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/config/config.dart';
// import 'package:osa_pro/src/core/error/error.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/user_info/data/sources/user_local_data_sources.dart';
import 'package:osa_pro/src/features/user_info/domain/entities/user_entity.dart';
import '../sources/user_remote_data_sources.dart';
import '../../domain/repositories/user_repositories.dart';

class UserInfoRepositoryImp implements UserInfoRepository {
  final UserInfoRemoteDataSource remoteDataSource;
  final UserInfoLocalDataSources userInfoLocalDataSources;
  final NetWorkInfo netWorkInfo;

  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  UserInfoRepositoryImp({
    required this.remoteDataSource,
    required this.userInfoLocalDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, UserEntity>> getUserInfo() async {
    try {
      final userId =
          int.tryParse(_sharedPreferencesService.getString("userId") ?? '');

      if (userId != null) {
        final localUserInfo = await userInfoLocalDataSources.getUser(userId);
        return Right(localUserInfo!);
      } else {
        return left(
            EmptyCacheFailure(message: "Branch id error local database!"));
      }
    } catch (e) {
      if (await netWorkInfo.isConnected) {
        try {
          final remotePosts = await remoteDataSource.getUserInfo();
          // _sharedPreferencesService.setString(
          //     "userId", remotePosts.id.toString());
          await userInfoLocalDataSources.saveUser(remotePosts);
          return Right(remotePosts);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }

      // ... example ...
      //
      // Future<User> getUser(String userId) async {
      //     return remoteDataSource.getUser(userId);
      //   }
      // ...
    }
  }
}
